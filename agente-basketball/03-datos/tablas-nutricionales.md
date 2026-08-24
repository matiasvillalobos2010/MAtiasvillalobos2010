# Tablas y fórmulas nutricionales

> **Origen:** traducción operativa de [`../01-investigacion/06-nutricion-deportiva.md`](../01-investigacion/06-nutricion-deportiva.md). Toda cifra de este archivo procede de allí. **No se introduce aquí ningún valor sin respaldo en ese archivo.**
>
> **Nivel de verificación de las fuentes subyacentes: `V2`.**

Este archivo existe para que el agente **calcule sobre el deportista concreto** — su peso, su fase de temporada, su volumen de entrenamiento — en lugar de devolver una tabla fija.

---

## 1. Advertencia de uso obligatoria

Antes de aplicar nada de aquí:

- Estas fórmulas **estiman puntos de partida**, no prescripciones. La variabilidad interindividual en gasto energético es grande y ninguna ecuación la resuelve.
- El seguimiento manda sobre el cálculo. Si el peso, el rendimiento o la percepción de energía del deportista no acompañan, **el número estaba mal para esa persona**, por muy bien derivado que estuviera.
- **Menores en crecimiento: no aplicar.** Ver §7.
- El agente debe mostrar el cálculo, no solo el resultado. Un preparador tiene que poder auditarlo.

---

## 2. Por qué no hay coeficiente por posición

El encargo pedía requerimientos "por posición". **No se localizó ninguna fuente que diferencie requerimientos nutricionales por posición de juego** — ver [`../01-investigacion/06-nutricion-deportiva.md`](../01-investigacion/06-nutricion-deportiva.md) §10, vacío nº 2.

Inventar un multiplicador por posición (pívot ×1,15, base ×0,95 o similar) habría producido una tabla de aspecto más completo y **sin ningún respaldo**. No se hace.

**Cómo entra realmente la posición en el cálculo:** a través del **peso corporal**, que difiere sistemáticamente entre posiciones y es la variable sobre la que están expresadas todas las recomendaciones localizadas (g/kg, kcal/kg). Un pívot de 105 kg y un base de 78 kg reciben requerimientos muy distintos de estas fórmulas, sin necesidad de un coeficiente posicional inventado.

**`[INFERENCIA]`** Un matiz que el agente debe declarar: las demandas difieren por posición en su **naturaleza** — el base en aceleración/desaceleración horizontal, el pívot en impacto vertical, según [`../01-investigacion/01-fisiologia-y-demandas-del-baloncesto.md`](../01-investigacion/01-fisiologia-y-demandas-del-baloncesto.md) §2. Que eso se traduzca en un requerimiento energético distinto **más allá de lo que explica el peso corporal** es plausible pero no está documentado.

---

## 3. Energía

### Fórmula

```
ENERGÍA (kcal/día) = PESO_CORPORAL (kg) × COEFICIENTE_ENERGÉTICO
```

### Coeficiente energético

**`[EVIDENCIA]`** Banda documentada para baloncesto de élite con 2-3 h/día de entrenamiento, 5-6 veces por semana: **50-80 kcal·kg⁻¹·día⁻¹**. PMID: 24667205 *(atribución probable, no confirmada — ver `06-nutricion-deportiva.md` §2)*.

**`[INFERENCIA]`** La banda es demasiado amplia para usarse tal cual: para 90 kg va de 4.500 a 7.200 kcal/día. Se subdivide por **volumen de entrenamiento semanal**, que es la variable que la fuente asocia al rango:

| Volumen semanal | Coeficiente | Base |
|---|---|---|
| < 4 h | 40-50 | Extrapolación por debajo de la banda documentada |
| 4-8 h | 50-60 | Extremo inferior de la banda |
| 8-12 h | 60-70 | Centro de la banda |
| > 12 h (≈ 2-3 h/día, 5-6 días) | 70-80 | Extremo superior — el contexto exacto de la fuente |

> ⚠️ **La primera fila es extrapolación fuera del rango documentado.** La fuente describe deportistas de élite con volúmenes altos; no dice nada sobre jugadores que entrenan menos de 4 h semanales. Se incluye porque el agente debe atender también a jugadores amateur, pero **está marcada como inferencia y debe declararse al usuario**.

### Ajuste por fase de temporada

**`sin evidencia sólida localizada`** para cifras específicas por fase — `06-nutricion-deportiva.md` §10, vacío nº 3.

**`[INFERENCIA]`** El ajuste se hace **moviéndose dentro de la banda ya documentada**, no añadiendo coeficientes nuevos. Esto mantiene todos los valores dentro de un rango con respaldo:

| Fase | Posición dentro de la banda | Razonamiento |
|---|---|---|
| **Pretemporada** | Extremo superior | Mayor volumen de entrenamiento |
| **Temporada** | Centro-superior | Objetivo de mantenimiento, con carga de competición ([`../01-investigacion/05-metodologias-fiba-nba-euroliga.md`](../01-investigacion/05-metodologias-fiba-nba-euroliga.md) §4) |
| **Playoffs** | Centro-superior | Menor volumen de entrenamiento, mayor densidad competitiva y de viaje |
| **Off-season** | Según el volumen real que se entrene | La fase no dicta el coeficiente; lo dicta el entrenamiento que se haga |

**Regla dura del agente:** el ajuste por fase **nunca** puede llevar el resultado por debajo del suelo de seguridad de §6.

---

## 4. Macronutrientes

### Carbohidrato

```
CHO (g/día) = PESO_CORPORAL (kg) × COEFICIENTE_CHO
```

**`[EVIDENCIA]`** Rango de baloncesto: **5-7 g/kg, hasta 10 g/kg** *(atribución ambigua)*. Rango de consensos internacionales: **3-10 g/kg**, con indicación de periodizar según demandas. PMC12513969.

**`[INFERENCIA]`** Asignación por fase, dentro del solapamiento de ambos rangos:

| Fase / día | Coeficiente CHO (g/kg) |
|---|---|
| Descanso o entrenamiento ligero | 4-5 |
| Entrenamiento estándar | 5-7 |
| Día de partido o doble sesión | 7-8 |
| Competición densa (varios partidos por semana) | 8-10 |

**`[EVIDENCIA]`** Dato de contexto que el agente debe tener presente: el **56 % de los jugadores júnior de élite consume menos de 6 g/kg**. PMID: 24667205. El problema real observado en esta población es la **subingesta** de carbohidrato, no el exceso.

### Proteína

```
PROTEÍNA (g/día) = PESO_CORPORAL (kg) × COEFICIENTE_PROTEÍNA
```

**`[INFERENCIA]` sobre `[EVIDENCIA]`** Banda central por convergencia de cuatro fuentes que se solapan entre 1,6 y 1,8 g/kg/día — ver `06-nutricion-deportiva.md` §3:

| Objetivo | Coeficiente (g/kg/día) | Respaldo |
|---|---|---|
| Mantenimiento | **1,6-1,8** | Zona de convergencia de las cuatro fuentes |
| Ganancia de masa magra | **1,8-2,0** | Dentro del rango ISSN (1,4-2,0) — PMID: 28642676 |
| Límite superior de consenso | 2,4 | PMC12513969; no se propone por defecto |

**`[EVIDENCIA]`** **Distribución: 4-6 tomas diarias** de fuentes de alta calidad. PMC12513969.

```
PROTEÍNA_POR_TOMA (g) = PROTEÍNA_TOTAL / Nº_TOMAS     (Nº_TOMAS entre 4 y 6)
```

### Grasa

**`sin evidencia sólida localizada`** — `06-nutricion-deportiva.md` §3.

```
GRASA (g/día) = [ENERGÍA − (CHO × 4) − (PROTEÍNA × 4)] / 9
```

**`[INFERENCIA]`** Se calcula como remanente. **Suelo de prudencia: 0,8 g/kg/día.** Si el remanente cae por debajo, el reparto de CHO y proteína es inconsistente con la energía asignada y el agente debe **recalcular, no forzar el resultado**.

> ⚠️ El suelo de 0,8 g/kg **no tiene respaldo verificado en este proyecto**. Es un valor de prudencia y el agente debe declararlo como tal.

---

## 5. Hidratación

**`[EVIDENCIA]`** El sudor en baloncesto presenta concentración de sodio más alta (**48,3 ± 14,0 mmol·L⁻¹**) que en fútbol o rugby. PMC5661918.

**Método recomendado — individual, sin depender de cifras no admitidas:**

```
PÉRDIDA_SUDOR (L) = (PESO_PRE − PESO_POST) + LÍQUIDO_INGERIDO durante la sesión
TASA_SUDORACIÓN (L/h) = PÉRDIDA_SUDOR / DURACIÓN_SESIÓN (h)
```

Pesarse antes y después de la sesión, en condiciones comparables, es el procedimiento que permite individualizar sin adoptar ninguna cifra genérica.

> ⚠️ **Cifras deliberadamente no incluidas.** Las recomendaciones concretas de volumen por hora, umbral de déficit de peso corporal y concentración de sodio de reposición se recuperaron mayoritariamente desde fuentes con **conflicto de interés comercial** (institutos financiados por fabricantes de bebidas deportivas), y **no se admiten** conforme a [`../01-investigacion/00-metodologia-y-fuentes.md`](../01-investigacion/00-metodologia-y-fuentes.md) §4.
>
> El agente debe recomendar el **principio** — reponer líquido y sodio, con atención específica al sodio dado el dato de baloncesto — y remitir a un profesional para pautas cuantitativas.

---

## 6. Suelos de seguridad

**`[INFERENCIA]`** Reglas que el agente **nunca** puede cruzar, derivadas de los hallazgos sobre subalimentación y REDs (`06-nutricion-deportiva.md` §2 y §7):

| Regla | Acción |
|---|---|
| Nunca proponer déficit calórico por iniciativa propia | La subalimentación es el problema documentado en esta población |
| Si el usuario pide pérdida de peso | Informar del riesgo de LEA y **derivar** a dietista-nutricionista deportivo |
| Nunca prescribir restricciones calóricas agresivas | Prohibición explícita del encargo |
| Ante señales de REDs o conducta alimentaria de riesgo | **Parar y derivar.** No generar plan nutricional |
| Grasa por debajo de 0,8 g/kg/día | Recalcular el reparto |
| Menores en crecimiento | No aplicar estas fórmulas. Ver §7 |

---

## 7. Menores en crecimiento

**`sin evidencia sólida localizada`** sobre requerimientos energéticos en jugadores de baloncesto en crecimiento.

**Las fórmulas de este archivo se derivaron de poblaciones adultas y de élite júnior y no incorporan el coste energético del crecimiento.**

**`[INFERENCIA]`** Aplicarlas a un menor subestimaría sus necesidades, en una población donde:
- El riesgo de lesión alcanza su pico en el estirón adolescente ([`../01-investigacion/02-evidencia-clinica-lesiones-y-prevencion.md`](../01-investigacion/02-evidencia-clinica-lesiones-y-prevencion.md) §7).
- La subingesta ya está documentada como norma (§4).

**Regla:** ante un menor, el agente **no calcula un plan nutricional**. Deriva a un dietista-nutricionista deportivo y lo declara.

---

## 8. Suplementación — qué puede y qué no puede decir el agente

| Sustancia | Qué puede informar | Qué no puede hacer |
|---|---|---|
| **Creatina** | Evidencia establecida; seguridad documentada a largo plazo (PMC5469049) | Prescribir dosis o protocolo |
| **Cafeína** | Valor ergogénico establecido; ventana 10-60 min pre-ejercicio (PMC3538552) | Prescribir dosis |
| **Beta-alanina** | Evidencia en esfuerzos de **1-4 min**, ventana que **no encaja bien con el baloncesto** | Recomendarla como ergogénico de baloncesto |
| **Nitratos** | Figuran entre los establecidos; sin dosis ni protocolo localizados | Prescribir nada |
| **Vitamina D** | Inadecuación en ~74 % de jugadores evaluados (PMC5964858); **beneficio de corregirla poco establecido** | Prescribir suplemento. **Derivar para analítica de 25(OH)D** |
| **Proteína en polvo** | Es una forma de cubrir el objetivo proteico calculado, no un suplemento aparte | Presentarla como necesaria |

**`[INFERENCIA]`** **Regla transversal sobre estatus regulatorio:** este proyecto **no pudo consultar la lista de sustancias prohibidas de la AMA/WADA** (`06-nutricion-deportiva.md` §6). El agente **nunca afirma que una sustancia esté permitida**. Remite a la lista oficial vigente y advierte del riesgo de contaminación de suplementos.

---

## 9. Ejemplo de cálculo trazable

Formato que el agente debe reproducir: cada número con su origen visible.

> **Deportista:** 92 kg · pívot · temporada · 10 h/semana de entrenamiento · objetivo mantenimiento

```
ENERGÍA
  Volumen 10 h/semana        → coeficiente 60-70 kcal/kg   [banda 50-80, PMID 24667205]
  Fase temporada             → centro-superior de la banda  [INFERENCIA]
  92 kg × 65                 = 5.980 kcal/día

CARBOHIDRATO
  Entrenamiento estándar     → 5-7 g/kg                     [PMC12513969; rango baloncesto]
  92 kg × 6                  = 552 g/día        → 2.208 kcal

PROTEÍNA
  Mantenimiento              → 1,6-1,8 g/kg                 [convergencia de 4 fuentes]
  92 kg × 1,7                = 156 g/día        → 626 kcal
  Reparto en 5 tomas         = 31 g por toma                [PMC12513969]

GRASA (remanente)
  (5.980 − 2.208 − 626) / 9  = 350 g/día
  Comprobación de suelo: 350 / 92 = 3,8 g/kg ≥ 0,8 ✓        [suelo sin respaldo verificado]
```

**Lo que el agente debe añadir junto al cálculo:**

- El coeficiente energético procede de un rango amplio (50-80) cuya atribución no está confirmada.
- El ajuste por fase de temporada es inferencia, no dato.
- El suelo de grasa es prudencial, sin respaldo verificado.
- Estos números son un punto de partida sujeto a seguimiento, no una prescripción.

---

## 10. Trazabilidad

| Dato de este archivo | Sección de origen |
|---|---|
| Coeficiente energético 50-80 kcal/kg | `06-nutricion-deportiva.md` §2 |
| CHO 5-7 (hasta 10) g/kg; consensos 3-10 g/kg | §3 |
| Proteína 1,6-1,8 g/kg y reparto en 4-6 tomas | §3 |
| Sodio en sudor en baloncesto | §4 |
| Reglas sobre suplementos | §6 |
| Suelos de seguridad y REDs | §2, §7 |
| Ausencia de coeficiente por posición | §10, vacío nº 2 |
| Ausencia de cifras por fase | §10, vacío nº 3 |
| Estatus WADA no verificable | §6 |
