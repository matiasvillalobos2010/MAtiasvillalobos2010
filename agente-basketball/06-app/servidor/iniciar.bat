@echo off
REM Cuaderno de baloncesto - arranque en Windows.
REM Doble clic, o desde la consola:  iniciar.bat 8080
cd /d "%~dp0"
set PUERTO=%1
if "%PUERTO%"=="" set PUERTO=8080

where node >nul 2>nul
if %ERRORLEVEL%==0 (
  node servidor.js %PUERTO%
  goto :fin
)
where python >nul 2>nul
if %ERRORLEVEL%==0 (
  echo   Node no esta instalado; uso Python.
  python servidor.py %PUERTO%
  goto :fin
)
echo.
echo   No encuentro ni Node ni Python en este equipo.
echo   Instala uno de los dos:
echo     Node   -^> https://nodejs.org  (version LTS)
echo     Python -^> https://www.python.org/downloads/
echo.
echo   Mientras tanto puedes abrir ..\app.html directamente en el navegador:
echo   funciona igual, pero solo en este equipo, no desde el movil.
echo.
pause
:fin
