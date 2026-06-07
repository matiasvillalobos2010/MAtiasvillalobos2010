//+------------------------------------------------------------------+
//|                                  VolatilityBot2_Agresivo.mq5      |
//|   Estrategia: Pau Perdices Bellet (Campeon Mundial Forex 2025)   |
//|   BOT 2 - AGRESIVO                               |
//|   ADX<40 | BB_p75 | 3 ops/dia | Ventana 06-11h+13-17h | 5% riesgo|
//|   Backtest: 46 ops/30d | WR 67.4% | PF 1.25 | +$232   |
//+------------------------------------------------------------------+
#property copyright "Pau Perdices Strategy - Bot 2"
#property version   "1.00"

#include <Trade/Trade.mqh>
CTrade trade;

//--- PARAMETROS DE ENTRADA (editables al arrastrar al grafico) ------
input string  Sep1            = "===== ESTRATEGIA =====";
input int     ADX_Threshold   = 40;        // ADX maximo (M15) para operar
input int     BB_Percentile   = 75;        // Percentil maximo BB Width (compresion)
input int     MaxOpsDia       = 3;         // Maximo de operaciones por dia
input double  RiskPct         = 5.0;       // % de riesgo por operacion

input string  Sep2            = "===== VENTANAS UTC =====";
input int     Win1_Open       = 6;         // Ventana 1 apertura (UTC)
input int     Win1_Close      = 11;        // Ventana 1 cierre (UTC)
input int     Win2_Open       = 13;        // Ventana 2 apertura (UTC)
input int     Win2_Close      = 17;        // Ventana 2 cierre (UTC)

input string  Sep3            = "===== INDICADORES =====";
input int     ADX_Period      = 14;
input int     BB_Period       = 20;
input double  BB_Std          = 2.0;
input int     Donchian_Period = 20;
input int     BB_Lookback     = 500;
input double  ATR_Mult_TP     = 1.5;
input int     ATR_Period      = 14;

input string  Sep4            = "===== GESTION =====";
input double  MinLotes        = 0.01;
input double  MaxLotes        = 2.00;
input int     MagicNumber     = 20250602;
input int     SlippagePoints  = 10;

//--- Handles de indicadores ----------------------------------------
int hADX, hBB, hATR, hMA;
datetime ultimaBarra = 0;
int      opsHoy = 0;
datetime diaActual = 0;

//+------------------------------------------------------------------+
int OnInit()
{
   hADX = iADX(_Symbol, PERIOD_M15, ADX_Period);
   hBB  = iBands(_Symbol, PERIOD_M5, BB_Period, 0, BB_Std, PRICE_CLOSE);
   hATR = iATR(_Symbol, PERIOD_M5, ATR_Period);
   hMA  = iMA(_Symbol, PERIOD_M5, BB_Period, 0, MODE_SMA, PRICE_CLOSE);

   if(hADX==INVALID_HANDLE || hBB==INVALID_HANDLE || hATR==INVALID_HANDLE || hMA==INVALID_HANDLE)
   {
      Print("Error creando handles de indicadores");
      return(INIT_FAILED);
   }
   trade.SetExpertMagicNumber(MagicNumber);
   trade.SetDeviationInPoints(SlippagePoints);
   Print("Bot 2 Agresivo iniciado en ", _Symbol);
   return(INIT_SUCCEEDED);
}

void OnDeinit(const int reason)
{
   IndicatorRelease(hADX);
   IndicatorRelease(hBB);
   IndicatorRelease(hATR);
   IndicatorRelease(hMA);
}

//+------------------------------------------------------------------+
//| Verifica si la hora UTC esta en alguna ventana activa            |
//+------------------------------------------------------------------+
bool EnVentana(int hora)
{
   if(hora >= Win1_Open && hora < Win1_Close) return true;
   if(hora >= Win2_Open && hora < Win2_Close) return true;
   return false;
}

//+------------------------------------------------------------------+
//| Calcula lotes segun riesgo % y distancia al SL                   |
//+------------------------------------------------------------------+
double CalcularLotes(double entrada, double sl)
{
   double slDist = MathAbs(entrada - sl);
   if(slDist <= 0) return MinLotes;

   double tickValue = SymbolInfoDouble(_Symbol, SYMBOL_TRADE_TICK_VALUE);
   double tickSize  = SymbolInfoDouble(_Symbol, SYMBOL_TRADE_TICK_SIZE);
   if(tickSize <= 0) return MinLotes;

   double balance     = AccountInfoDouble(ACCOUNT_BALANCE);
   double riesgoUSD   = balance * (RiskPct/100.0);
   double perdidaLote = (slDist / tickSize) * tickValue;
   if(perdidaLote <= 0) return MinLotes;

   double lotes = riesgoUSD / perdidaLote;

   double lotStep = SymbolInfoDouble(_Symbol, SYMBOL_VOLUME_STEP);
   double volMin  = SymbolInfoDouble(_Symbol, SYMBOL_VOLUME_MIN);
   double volMax  = SymbolInfoDouble(_Symbol, SYMBOL_VOLUME_MAX);
   lotes = MathFloor(lotes/lotStep)*lotStep;
   lotes = MathMax(lotes, MathMax(MinLotes, volMin));
   lotes = MathMin(lotes, MathMin(MaxLotes, volMax));
   return NormalizeDouble(lotes, 2);
}

//+------------------------------------------------------------------+
//| Percentil de la BB Width actual sobre el lookback                |
//+------------------------------------------------------------------+
bool CompresionBB()
{
   int n = BB_Lookback;
   double up[], lo[], mid[];
   if(CopyBuffer(hBB, 1, 1, n, up) < n) return false;  // banda superior
   if(CopyBuffer(hBB, 2, 1, n, lo) < n) return false;  // banda inferior
   if(CopyBuffer(hBB, 0, 1, n, mid) < n) return false; // media

   double widths[];
   ArrayResize(widths, n);
   for(int i=0; i<n; i++)
      widths[i] = (mid[i]>0) ? (up[i]-lo[i])/mid[i] : 0;

   double cur = widths[0];
   int count = 0;
   for(int i=0; i<n; i++)
      if(widths[i] <= cur) count++;

   double rank = 100.0 * count / n;
   return (rank <= BB_Percentile);  // solo si esta entre las mas comprimidas
}

//+------------------------------------------------------------------+
void OnTick()
{
   // Actuar solo en barra M5 nueva
   datetime t = iTime(_Symbol, PERIOD_M5, 0);
   if(t == ultimaBarra) return;
   ultimaBarra = t;

   // Reset contador diario
   datetime hoy = (datetime)(TimeGMT() / 86400) * 86400;
   if(hoy != diaActual) { diaActual = hoy; opsHoy = 0; }

   // Ya hay posicion propia abierta? no abrir otra
   if(PositionSelect(_Symbol))
   {
      if(PositionGetInteger(POSITION_MAGIC) == MagicNumber) return;
   }

   // Limite diario
   if(opsHoy >= MaxOpsDia) return;

   // Ventana horaria
   MqlDateTime st; TimeToStruct(TimeGMT(), st);
   if(!EnVentana(st.hour)) return;

   // Filtro 1: ADX M15 < umbral
   double adx[];
   if(CopyBuffer(hADX, 0, 1, 1, adx) < 1) return;
   if(adx[0] >= ADX_Threshold) return;

   // Filtro 2: compresion Bollinger
   if(!CompresionBB()) return;

   // Trigger: ruptura Canal Donchian (M5)
   int idxHi = iHighest(_Symbol, PERIOD_M5, MODE_HIGH, Donchian_Period, 2);
   int idxLo = iLowest(_Symbol, PERIOD_M5, MODE_LOW, Donchian_Period, 2);
   double canalHi = iHigh(_Symbol, PERIOD_M5, idxHi);
   double canalLo = iLow(_Symbol, PERIOD_M5, idxLo);

   double prevClose = iClose(_Symbol, PERIOD_M5, 2);
   double currClose = iClose(_Symbol, PERIOD_M5, 1);

   double sma[], atrv[];
   if(CopyBuffer(hMA, 0, 1, 1, sma) < 1) return;
   if(CopyBuffer(hATR, 0, 1, 1, atrv) < 1) return;
   double slRef = sma[0];
   double atr   = atrv[0];

   int    digits = (int)SymbolInfoInteger(_Symbol, SYMBOL_DIGITS);
   double ask = SymbolInfoDouble(_Symbol, SYMBOL_ASK);
   double bid = SymbolInfoDouble(_Symbol, SYMBOL_BID);

   // BUY: ruptura alcista del canal
   if(prevClose <= canalHi && currClose > canalHi)
   {
      double entrada = ask;
      double sl = NormalizeDouble(slRef, digits);
      double tp = NormalizeDouble(entrada + ATR_Mult_TP*atr, digits);
      if(sl >= entrada) return;                  // coherencia
      double lotes = CalcularLotes(entrada, sl);
      if(trade.Buy(lotes, _Symbol, entrada, sl, tp, "VE-Bot2"))
      {
         opsHoy++;
         Print("BUY ", _Symbol, " lotes=", lotes, " SL=", sl, " TP=", tp);
      }
   }
   // SELL: ruptura bajista del canal
   else if(prevClose >= canalLo && currClose < canalLo)
   {
      double entrada = bid;
      double sl = NormalizeDouble(slRef, digits);
      double tp = NormalizeDouble(entrada - ATR_Mult_TP*atr, digits);
      if(sl <= entrada) return;
      double lotes = CalcularLotes(entrada, sl);
      if(trade.Sell(lotes, _Symbol, entrada, sl, tp, "VE-Bot2"))
      {
         opsHoy++;
         Print("SELL ", _Symbol, " lotes=", lotes, " SL=", sl, " TP=", tp);
      }
   }
}
//+------------------------------------------------------------------+
