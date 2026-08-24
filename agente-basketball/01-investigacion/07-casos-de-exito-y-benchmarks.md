# Casos de éxito y benchmarks

> **Nivel de verificación: `V2`.** Ver [`00-metodologia-y-fuentes.md`](00-metodologia-y-fuentes.md) §1-2.

Este archivo recoge las **intervenciones con resultado positivo documentado** que ha localizado el proyecto: qué se hizo, en quién, con qué magnitud de efecto. Es la referencia contra la que se compara cualquier decisión del agente.

El resto de `01-investigacion/` responde a *"¿qué sabemos?"*. Este archivo responde a *"¿qué ha funcionado, y cuánto?"* — que es la pregunta que se hace un preparador físico.

---

## 1. Cómo leer esta tabla, y una advertencia de método

**Una lista de casos de éxito tiene un sesgo incorporado.** Si se seleccionan estudios por mostrar resultado positivo, se sobreestima sistemáticamente el efecto esperable: los estudios que no encontraron nada existen y no aparecen aquí. Es sesgo de publicación más sesgo de selección, en el mismo sitio.

Por eso este archivo hace dos cosas que una lista de "lo que funciona" no suele hacer:

1. **§4 recoge los contraejemplos** — intervenciones donde el efecto esperado **no** apareció. Están en el mismo documento, con el mismo peso tipográfico.
2. **Cada entrada declara su n y su diseño.** Un cruzado con n=10 y un metaanálisis de 818 jugadores no son el mismo tipo de afirmación, aunque ambos den p < 0,05.

Usado así, el archivo sirve como benchmark. Usado solo con §2 y §3, es material de venta.

---

## 2. Casos de éxito ordenados por solidez

### Nivel A — Metaanálisis específicos de baloncesto

| # | Intervención | Población | Resultado | Fuente |
|---|---|---|---|---|
| **A1** | **Entrenamiento pliométrico de saltos** | Jugadores de baloncesto, cualquier sexo y edad | Mejora salto, velocidad en esprint lineal, COD, equilibrio y fuerza muscular | PMID: 33359798 |
| **A2** | **Pliometría aislada** | **32 estudios, 818 jugadores** | Efectos significativos pequeños a grandes en potencia de salto vertical, altura de CMJ, tiempo de esprint y COD. Mayor efecto en **>16,3 años** | DOI: 10.3389/fphys.2026.1747487 |
| **A3** | **Pliometría en juveniles** | Baloncesto juvenil | Mejora salto, esprint, COD y equilibrio | PMC11457583 |
| **A4** | **HIIT** | Jugadores de baloncesto | Mejora VO₂máx, velocidad, COD, potencia explosiva y **RSA** | PMC11877297 |

**A2 es el benchmark de referencia del proyecto.** 818 jugadores, 32 estudios, efectos consistentes en las cualidades que definen el juego. Ninguna otra intervención documentada aquí tiene ese respaldo.

### Nivel B — Protocolos concretos con magnitud reportada

| # | Intervención | Población y diseño | Magnitud | Fuente |
|---|---|---|---|---|
| **B1** | **Entrenamiento con resistencia variable dentro de entrenamiento complejo** | 21 jugadores universitarios, aleatorizado | **1RM sentadilla +36,5 %** (control con resistencia constante: +32,3 %); mejoras en CMJ y salto en sentadilla | PMC9679182 |
| **B2** | **RSA con protocolo 20×15 m** frente a 10×30 m | Jugadores de élite | El de 20×15 m resultó **más representativo de las demandas del baloncesto** | PMID: 34168703 |
| **B3** | **Comida pre-ejercicio con proteína + carbohidrato** (1+1 g/kg) frente a solo carbohidrato (2 g/kg), 90 min antes | **10** jugadores bien entrenados, aleatorizado cruzado | CK post-ejercicio **56 vs. 100 U·L⁻¹** (p=0,018); glucemia superior; **mejor tiro libre en el 4.º cuarto** (p=0,027) | PMID: 25053925 |
| **B4** | **Programa neuromuscular preventivo, 2-3 sesiones/semana** | Deporte juvenil, metaanálisis | Reducción de riesgo **sustancialmente mayor** que con 1 sesión/semana | DOI: 10.3389/fphys.2017.00920 |
| **B5** | **Entrenamiento neuromuscular** (todos los deportes) | Metaanálisis, deporte juvenil | **IRR 0,64** para lesión de miembro inferior | PMID: 26084526 |

**B1 tiene un matiz que conviene no saltarse:** el grupo control mejoró +32,3 %. La diferencia entre métodos (4,2 puntos) es mucho menor que el efecto de **entrenar fuerza en absoluto**. El caso de éxito real es el entrenamiento de fuerza, no la variante concreta.

**B3 es el mejor estudio del bloque nutricional** y a la vez el más frágil: n = 10, solo hombres, sesión aguda única. Su desenlace de tiro libre en el cuarto periodo es exactamente el tipo de medida que interesa en baloncesto, y por eso se destaca — pero un n de 10 no sostiene una política de equipo.

### Nivel C — Prevención con evidencia favorable pero frágil

| # | Intervención | Resultado | Fuente |
|---|---|---|---|
| **C1** | Calentamiento neuromuscular en baloncesto | Efecto protector significativo en tobillo en **4 de 9** estudios; en LCA en **2 de 4** | PMC8446130 |
| **C2** | Entrenamiento neuromuscular y esguince de tobillo | Reducción significativa en el **50 %** de los estudios de baloncesto (frente al 100 % en voleibol) | ScienceDirect S2059775421001644 |

> **C1 y C2 se presentan como caso de éxito con reservas explícitas.** Los propios autores de C1 declaran que la mayoría de estudios están infrapotenciados, que las definiciones varían y que **no fue posible metaanálisis por heterogeneidad**. "4 de 9" es una señal, no un efecto robusto.

---

## 3. Qué comparar contra qué

Uso operativo: antes de justificar una decisión, contrástala con el benchmark de su categoría.

| Si el agente propone… | Compara contra | Y declara |
|---|---|---|
| Bloque pliométrico | **A2** (818 jugadores) | Que es la intervención mejor respaldada del proyecto |
| Bloque de fuerza | **B1** (+36,5 % 1RM) | Que el efecto grande viene de entrenar fuerza, no del método concreto |
| Acondicionamiento / RSA | **A4** + **B2** (20×15 m) | Que el formato de muchas repeticiones cortas se ajusta mejor al juego |
| Bloque preventivo | **B4** (2-3×/semana) + **C1** | Que la dosis importa, y que la evidencia en baloncesto es frágil |
| Comida pre-partido | **B3** (PRO+CHO) | Que procede de un cruzado con n = 10 |
| Mejora de esprint lineal | **D1** (§4) | Que la pliometría **no** lo consigue |
| Mejora de salto vía fuerza máxima | **D2** (§4) | Que la transferencia no está demostrada |

---

## 4. Contraejemplos — dónde el efecto esperado NO apareció

**Esta sección es la que hace utilizable la anterior.** Son resultados negativos publicados, no ausencias de evidencia.

| # | Intervención | Lo que se esperaba | Lo que se encontró | Fuente |
|---|---|---|---|---|
| **D1** | Pliometría → esprint lineal | Mejora del esprint | Efecto sobre 20 m **menor, menos consistente y no significativo** | DOI: 10.3389/fphys.2026.1747487 |
| **D2** | Fuerza máxima (1RM sentadilla) → esprint y salto | Transferencia al gesto | **No asociada** a mejoras en tiempo de esprint ni altura de salto *(en futbolistas de alto nivel femeninas)* | PMC6747739 |
| **D3** | Pliometría en juveniles → fuerza de miembro inferior | Ganancia de fuerza | **No mejoró significativamente** la fuerza | PMC11457583 |
| **D4** | ACWR → reducción de lesiones | Gestión de carga preventiva | Cargas crónicas **aleatorizadas** rinden igual que el ACWR; manipularlo para reducir lesiones es "una conjetura" | Impellizzeri et al., 2020, IJSPP 15(6):907 |
| **D5** | Suplementación de vitamina D → salud ósea y rendimiento | Beneficio al corregir el déficit | La suplementación restauró la suficiencia, pero **los efectos beneficiosos siguen siendo escasos** | PMC5964858 |
| **D6** | Beta-alanina → rendimiento en baloncesto | Ergogénico aplicable | Evidencia en esfuerzos de **1-4 min**, ventana que **no encaja** con el patrón del baloncesto | DOI: 10.1186/s12970-015-0090-y |

**El patrón que emerge de §4 es el hallazgo más útil de todo el proyecto:** las intervenciones funcionan **para lo que entrenan**, y la transferencia a otras cualidades falla más de lo que se asume. Pliometría mejora salto pero no esprint. Fuerza máxima sube el 1RM pero no necesariamente el salto. Pliometría en jóvenes mejora potencia pero no fuerza.

**`[INFERENCIA]`** Consecuencia de diseño: **si quieres una cualidad, entrénala directamente.** No confíes en que la mejora de otra la arrastre. Es la justificación de que el motor de sustitución de [`../02-agente/logica-de-adaptacion.md`](../02-agente/logica-de-adaptacion.md) prohíba sustituir entre patrones de movimiento distintos, y de que se omita y se declare antes que ofrecer un sustituto que entrena otra cosa.

---

## 5. Casos de éxito que este proyecto NO pudo documentar

Buscados explícitamente por ser donde más se asume que existen:

| Buscado | Resultado |
|---|---|
| Protocolos NBA/NBPA de gestión de carga y retorno al juego | **No localizados.** Su existencia pública se da por supuesta y no se pudo confirmar |
| Contenido metodológico de FIBA, EuroLeague o federaciones europeas | **No localizado.** Existen los programas de formación; su contenido no es público |
| Programa preventivo tipo FIFA 11+ validado **en baloncesto** | La evidencia del 11+ localizada es **en fútbol** |
| Protocolo de tendinopatía rotuliana con resultado documentado | **No localizado** |
| Métrica de gestión de carga validada como alternativa al ACWR | **No localizada.** Se sabe qué no usar, no qué usar |
| Criterios de recuperación validados en baloncesto | **No localizados** |

> La fila más relevante es la última del bloque de carga: la crítica al ACWR es sólida, y **no hay sustituto con mejor respaldo**. Un caso de éxito que no existe es información, no un hueco que rellenar.

---

## 6. Resumen en una tabla

| Intervención | Respaldo | Magnitud | ¿Transfiere? |
|---|---|---|---|
| Pliometría | ★★★ 818 jugadores | Pequeño a grande | Salto y COD **sí**; esprint **no** |
| HIIT / RSA | ★★★ metaanálisis | Significativo | VO₂máx, velocidad, COD, RSA |
| Fuerza máxima | ★★ ECA n=21 | +36,5 % 1RM | Al 1RM **sí**; al gesto **no demostrado** |
| Prevención neuromuscular 2-3×/sem | ★★ metaanálisis; frágil en baloncesto | IRR 0,64 (general) | Reducción de lesión de MMII |
| PRO+CHO pre-partido | ★ ECA cruzado n=10 | CK 56 vs. 100 U·L⁻¹ | Daño muscular y tiro libre en 4.º cuarto |
| Gestión de carga vía ACWR | ✗ impugnado | — | **No** |
| Vitamina D suplementada | ✗ beneficio escaso | — | Corrige la analítica; el resto no está claro |

---

## Fuentes citadas en este archivo

Todas ya recogidas en [`99-bibliografia.md`](99-bibliografia.md). Este archivo **no introduce ninguna fuente nueva**: reorganiza las existentes por criterio de resultado.
