# Recomendador por objetivo

Motor que traduce **lo que el deportista quiere conseguir** en un plan concreto, usando la evidencia y los benchmarks del proyecto.

Se apoya en [`../01-investigacion/07-casos-de-exito-y-benchmarks.md`](../01-investigacion/07-casos-de-exito-y-benchmarks.md), y opera después de [`protocolo-de-evaluacion-inicial.md`](protocolo-de-evaluacion-inicial.md) y a través de [`logica-de-adaptacion.md`](logica-de-adaptacion.md).

---

## 1. El principio que gobierna el recomendador

**`[EVIDENCIA]`** El hallazgo transversal del proyecto: **las intervenciones funcionan para lo que entrenan, y la transferencia a otras cualidades falla más de lo que se asume.** Ver `07-casos-de-exito-y-benchmarks.md` §4.

Consecuencia directa para este motor:

> **Si el deportista quiere una cualidad, se entrena esa cualidad directamente.**
> No se confía en que la mejora de otra la arrastre.

Y su corolario, igual de importante:

> **Cada objetivo declara también lo que NO va a conseguir.**
> Un recomendador que solo dice lo que mejora está vendiendo, no recomendando.

---

## 2. Los seis objetivos

| Cód. | Objetivo | Cómo lo pide el deportista |
|---|---|---|
| `OBJ-SALTO` | Fortalecer el salto | "quiero saltar más", "mejorar el salto vertical", "llegar al aro" |
| `OBJ-EXPL` | Mejorar explosividad | "ser más explosivo", "arrancar más rápido", "más potencia" |
| `OBJ-RESIS` | Mejorar resistencia | "aguantar el partido", "no llegar fundido al cuarto cuarto" |
| `OBJ-FULL` | Full body | "trabajo de fuerza general", "todo el cuerpo" |
| `OBJ-EQUIL` | Algo equilibrado | "un poco de todo", "no tengo un objetivo concreto" |
| `OBJ-VET` | Deportista veterano (≥35-40 años) | "tengo 42 años y quiero seguir jugando" |

Si el deportista pide algo que no encaja en ninguno, el agente pregunta hasta encajarlo o declara que no tiene base para ese objetivo.

---

## 3. `OBJ-SALTO` — Fortalecer el salto

**Es el objetivo mejor respaldado del proyecto.** Se puede recomendar con confianza.

**Benchmark:** metaanálisis de **32 estudios y 818 jugadores** de baloncesto — efectos significativos de magnitud pequeña a grande sobre potencia de salto vertical y altura de CMJ. Efecto mayor en **>16,3 años**. `[EVIDENCIA]` — DOI: 10.3389/fphys.2026.1747487.

### Distribución de la sesión

| Bloque | % del tiempo | Ejercicios de referencia | Principio |
|---|---|---|---|
| Preventivo | 15 % | `PREV-01`, `PREV-03`, `PREV-06` | `P5` |
| **Pliometría** | **40 %** | `PLI-01`, `PLI-03`, `PLI-04`, `PLI-08`, `PLI-12` | `P1` |
| Fuerza de pierna | 30 % | `ROD-03`/`ROD-01`, `CAD-03`/`CAD-02` | `P3`, `P9` |
| Core | 15 % | `CORE-01`, `CORE-05` | `P9` |

### Por qué la fuerza ocupa un 30 % en un plan de salto

**`[EVIDENCIA]`** En juveniles, la pliometría **no** mejora la fuerza de miembro inferior (`P3`, PMC11457583). Y post-PHV la respuesta es mejor al trabajo **combinado** de fuerza y pliometría (NSCA LTAD).

**`[INFERENCIA]`** Por eso el plan no es 100 % pliometría aunque el objetivo sea salto: la pliometría expresa potencia sobre una base de fuerza que ella misma no construye.

### Lo que este plan NO va a conseguir

- **No mejorará el esprint lineal.** El efecto de la pliometría sobre 20 m no es significativo (`P2` / contraejemplo `D1`). Si además quiere velocidad, hay que correr.
- **La ganancia de 1RM no garantiza más salto.** Contraejemplo `D2`: la mejora de fuerza máxima no se asoció a mayor altura de salto en deportes afines.

### Progresión

Semanas 1-2 base de aterrizaje (`PLI-10`, `PREV-06`) → 3-6 volumen pliométrico → 7+ introducir alta demanda (`PLI-05`) **solo con base de fuerza previa y nunca con dolor anterior de rodilla**.

---

## 4. `OBJ-EXPL` — Mejorar explosividad

Muy próximo a `OBJ-SALTO`, con más peso horizontal y de cambio de dirección.

**Benchmark:** el mismo metaanálisis (`A2`) más los efectos de HIIT sobre potencia explosiva (`A4`, PMC11877297).

| Bloque | % | Ejercicios | Principio |
|---|---|---|---|
| Preventivo | 15 % | `PREV-04`, `PREV-06`, `PREV-07` | `P5` |
| Pliometría multidireccional | 30 % | `PLI-06`, `PLI-07`, `PLI-08`, `PLI-11` | `P1`, `P6` |
| Fuerza y potencia | 25 % | `ROD-03`/`ROD-02`, `CAD-09`/`CAD-02` | `P9` |
| **Frenado excéntrico** | 15 % | `ACO-06`, `CAD-06`/`CAD-07` | `P7` |
| Reactivo | 15 % | `ACO-05`, `ACO-04` | `P8` |

**Por qué hay un bloque de frenado en un plan de explosividad.** `[INFERENCIA]` `P7`: el número de desaceleraciones por partido casi iguala al de aceleraciones (base: 7,3 acel. / 6,9 decel. en 60 s de máxima exigencia). Ser explosivo incluye poder frenar. Es inferencia del perfil de demanda, no evidencia de intervención.

**Lo que NO conseguirá:** velocidad lineal pura (`D1`), y el bloque reactivo **no es prevención probada de LCA** (`P8` es inferencia sobre un estudio descriptivo).

---

## 5. `OBJ-RESIS` — Mejorar resistencia

**Benchmark:** `A4` — el HIIT en jugadores de baloncesto mejora VO₂máx, velocidad, COD, potencia explosiva y RSA (PMC11877297). Y `B2` — el protocolo **20×15 m es más representativo de las demandas del baloncesto** que 10×30 m (PMID 34168703).

| Bloque | % | Ejercicios | Principio |
|---|---|---|---|
| Preventivo | 15 % | `PREV-01`, `PREV-03`, `PREV-05` | `P5` |
| **RSA / HIIT** | **45 %** | `ACO-08` (formato 20×15 m), `ACO-01`, `ACO-09` | `A4`, `B2` |
| Fuerza de mantenimiento | 25 % | `ROD-01`, `CAD-02`, `SUP-01` | `P9` |
| Core | 15 % | `CORE-01`, `CORE-02` | `P9` |

### El matiz que hay que decir

**`[EVIDENCIA]`** La mayor parte de la distancia de un partido se recorre a **baja intensidad** (bases 68,8 %, aleros 49,1 %, pívots 50,4 % — PMC12121883).

**`[INFERENCIA]`** Eso **no** significa que el objetivo sea el trote continuo. La baja intensidad es el fondo sobre el que se recuperan las acciones que deciden el partido. "Aguantar" en baloncesto es sostener la calidad de las acciones explosivas repetidas, no correr más minutos.

**`sin evidencia sólida localizada`** sobre el papel cuantificado de la capacidad aeróbica como soporte de recuperación en baloncesto. El bloque de cardio continuo (`ACO-10`) se ofrece como `[PRÁCTICA]`, sin respaldo específico.

**En escenarios sin espacio** (1, 2, 7): el bloque de RSA se degrada a `ACO-02` (carrera en el sitio intervalada). El agente debe declarar que **es una aproximación, no equivalente**.

---

## 6. `OBJ-FULL` — Full body

**Benchmark:** `B1` — ECA en 21 jugadores universitarios: **1RM sentadilla +36,5 %** (grupo control con resistencia constante +32,3 %), con mejoras en CMJ y salto en sentadilla (PMC9679182).

**El matiz que evita vender de más:** la diferencia entre métodos fue de 4,2 puntos; el control mejoró +32,3 %. **El efecto grande viene de entrenar fuerza en absoluto, no del método concreto.** Dilo.

Cobertura obligatoria de patrones — uno de cada:

| Patrón | Con material | Sin material |
|---|---|---|
| Dominante de rodilla | `ROD-03`, `ROD-04` | `ROD-01`, `ROD-05` |
| Dominante de cadera | `CAD-03`, `CAD-04` | `CAD-02`, `CAD-05` |
| Empuje horizontal | `SUP-03` | `SUP-01` |
| Empuje vertical | `SUP-04` | `SUP-05` |
| Tracción | `SUP-06`, `SUP-10` | `SUP-08` |
| Core antiextensión | `CORE-07` | `CORE-01` |
| Core antirrotación | `CORE-05` | `CORE-02` |
| Preventivo | `PREV-04` | `PREV-01`, `PREV-05` |

**Lo que NO conseguirá:** `D2` — la mejora de 1RM **no se asoció** a mejoras de esprint ni de salto en deportes afines. Un full body construye fuerza; que eso llegue al gesto de juego no está demostrado.

---

## 7. `OBJ-EQUIL` — Algo equilibrado

Para quien no tiene objetivo concreto o quiere mantenimiento general.

| Bloque | % | Principio |
|---|---|---|
| **Preventivo** | 20 % | `P5` — **innegociable** |
| Fuerza (patrones básicos) | 30 % | `P9` |
| Pliometría | 20 % | `P1` |
| Acondicionamiento | 20 % | `A4` |
| Core | 10 % | `P9` |

**`[EVIDENCIA]`** El bloque preventivo pesa más aquí que en los objetivos específicos porque es lo único con dosis respaldada: **2-3 sesiones semanales** producen reducción de riesgo sustancialmente mayor que una (DOI: 10.3389/fphys.2017.00920).

**`[INFERENCIA]`** Sin un objetivo de rendimiento que priorizar, la prevención es el uso más defendible del tiempo disponible. Es criterio propio.

**Lo que NO conseguirá:** ninguna cualidad mejorará tanto como con un plan específico. Es la contrapartida de repartir, y hay que decirlo.

---

## 8. `OBJ-VET` — Deportista veterano (≥35-40 años)

> ## ⚠️ Aquí el proyecto no tiene evidencia
>
> **`sin evidencia sólida localizada`** sobre entrenamiento en jugadores de baloncesto veteranos o *masters*. Ninguna de las 70 fuentes del proyecto estudia esta población.
>
> Lo que sí hay es lo contrario: evidencia sobre **juveniles** (estado madurativo, PHV) y sobre poblaciones **universitarias y profesionales adultas**. La franja de 40 años no está cubierta.

### Qué hace el agente entonces

**No inventa un protocolo de veteranos.** Aplica los principios generales y **declara la extrapolación**:

| Decisión | Base | Etiqueta |
|---|---|---|
| Mantener el bloque preventivo a 2-3 sesiones/semana | `P5`, evidencia en deporte juvenil y general | `[EVIDENCIA]` extrapolada — **declarar** |
| Progresión pliométrica más conservadora; `PLI-05` no por defecto | Prudencia ante mayor tiempo de exposición acumulada | `[INFERENCIA]` |
| Priorizar fuerza sobre volumen de impacto | `P3`: la pliometría no construye la fuerza subyacente | `[INFERENCIA]` |
| Más margen de recuperación entre sesiones exigentes | Consenso COI: la carga incluye congestión y fatiga acumulada | `[INFERENCIA]` |
| Cribado médico previo recomendado | Prudencia | `[INFERENCIA]` |

### Distribución propuesta

| Bloque | % |
|---|---|
| Preventivo y movilidad | 30 % |
| Fuerza | 35 % |
| Pliometría de baja demanda (`PLI-01`, `PLI-10`, sin `PLI-05`) | 15 % |
| Acondicionamiento | 20 % |

**Frase que el agente debe decir literalmente, no parafrasear:**

> Este plan no se apoya en evidencia específica de jugadores de tu franja de edad: no la encontré en la investigación de este proyecto. Lo que tienes es la aplicación de principios generales, con criterio conservador donde no hay dato. Un preparador físico presencial que te vea entrenar vale más que este plan.

---

## 9. Objetivos que el agente debe redirigir o rechazar

| Petición | Respuesta |
|---|---|
| "Quiero correr más rápido en línea recta" | Se entrena con esprint (`ACO-01`), **no con pliometría** (`D1`). Requiere `ESP-CANCHA`: si no lo tiene, se declara imposible en su escenario |
| "Quiero perder peso" | **B8 — parada total.** Deriva a dietista-nutricionista deportivo. Ver [`reglas-de-seguridad.md`](reglas-de-seguridad.md) |
| "Quiero recuperarme de una lesión" | **B2 — parada total** salvo con supervisión profesional (escenario 8) |
| "Quiero ganar masa muscular" | Se atiende como `OBJ-FULL` + objetivo proteico de 1,8-2,0 g/kg. **Sin déficit calórico y sin promesas de composición corporal**: no hay evidencia localizada al respecto |
| "Quiero mejorar el tiro" | Fuera de alcance: este proyecto es preparación física, no técnica. Los ejercicios `BAL-` existen para que los escenarios con balón funcionen, no como programa técnico |

---

## 10. Preguntas del recomendador

**Van después del bloque de salud** de [`protocolo-de-evaluacion-inicial.md`](protocolo-de-evaluacion-inicial.md). Si hay condición de parada, no se llega aquí.

```
1. ¿Qué quieres conseguir?  → mapea a OBJ-*
   Si dice varias cosas: "¿cuál es la prioritaria?" Un plan que persigue
   tres objetivos a la vez no consigue ninguno bien.

2. ¿Por qué ese objetivo ahora?  → detecta objetivos derivados de un
   problema (dolor, lesión, bajón de rendimiento) que activarían §3

3. ¿Cuánto tiempo te das?  → <6 semanas: declarar que el margen de
   mejora esperable es limitado

4. ¿Cómo sabrás que ha funcionado?  → fija la métrica de seguimiento
   (CMJ, repeticiones, carga, sensación) que irá al módulo de progreso
```

La pregunta 4 es la que conecta con el seguimiento: **si no se define la métrica al principio, después no hay nada que registrar.**

---

## 11. Formato de la propuesta

```markdown
## Propuesta — [objetivo] · [escenario]

### Qué vamos a entrenar y por qué
[cualidad principal] · benchmark de referencia: [intervención, magnitud, n]

### Qué NO va a conseguir este plan
[lista explícita, con el contraejemplo que lo sostiene]

### Distribución
[tabla de bloques con % y ejercicios asignados]

### Progresión
[semanas, con criterio de avance]

### Métrica de seguimiento
[qué medir, cada cuánto, y que la comparación es contigo mismo:
 no hay baremos normativos verificados]

### Sustituciones aplicadas
[por escenario o por perfil]

---
⚠️ Fuentes de nivel V2. Dosificaciones = práctica convencional, no evidencia.
```

---

## 12. Comprobación antes de proponer

1. ¿El objetivo declarado se corresponde con la cualidad que se está entrenando?
2. ¿Está la sección de **"qué NO va a conseguir"**, con su contraejemplo?
3. ¿Se ha citado el benchmark con **magnitud y n**?
4. ¿El bloque preventivo llega a 2-3 sesiones/semana? Si no, ¿se ha declarado la infradosificación?
5. ¿Todos los ejercicios son ejecutables en el escenario declarado?
6. Si es `OBJ-VET`: ¿está la declaración literal de ausencia de evidencia?
7. ¿Se ha definido la métrica de seguimiento?
