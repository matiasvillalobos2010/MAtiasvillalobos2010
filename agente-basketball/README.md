# Agente de Entrenamiento y Nutrición de Baloncesto

Agente de IA que genera entrenamientos funcionales y planes de nutrición para jugadores de baloncesto, adaptándose a ocho escenarios de material disponible — desde una habitación vacía hasta un centro de alto rendimiento.

**Estado: completo.** Fases 0-5 cerradas, más una segunda ronda de investigación que cubrió cuatro vacíos.

---

## ⚠️ Lee esto antes de usarlo

**Ninguna fuente de este proyecto pudo abrirse directamente.** El entorno en que se produjo bloquea por política de red el acceso a PubMed, PMC, revistas indexadas y `doi.org`.

Las 70 fuentes citadas fueron **localizadas** vía buscador —existencia, autoría, revista, año, identificador y extractos de contenido confirmados— pero no leídas en su origen. Eso es nivel de verificación `V2`, no `V1`.

Consecuencias concretas:

- **La atribución de un dato a un estudio concreto puede fallar.** Donde había ambigüedad, está señalada en el texto.
- **No se pudo evaluar la calidad metodológica de ningún estudio.**
- **Las dosificaciones no tienen respaldo verificado.** La única dosis con evidencia real en todo el proyecto es la frecuencia del bloque preventivo: 2-3 sesiones semanales.

**Antes de aplicar esto profesionalmente, abre las fuentes.** Los DOI y PMID están en [`01-investigacion/99-bibliografia.md`](01-investigacion/99-bibliografia.md) precisamente para eso.

Detalle completo en [`01-investigacion/00-metodologia-y-fuentes.md`](01-investigacion/00-metodologia-y-fuentes.md).

---

## Cómo usar el agente

1. **Abre [`02-agente/SYSTEM-PROMPT.md`](02-agente/SYSTEM-PROMPT.md)** y carga su contenido como instrucción de sistema en el LLM que prefieras. Es autosuficiente: reglas de seguridad, principios de evidencia y motor de sustitución están dentro.
2. **Opcional pero recomendado:** adjunta como contexto los archivos de [`03-datos/`](03-datos/) — biblioteca de 73 ejercicios, catálogo de implementos, 8 escenarios y tablas nutricionales.
3. **Pídele un plan.** Ejemplos:

```
Soy alero, 24 años, 88 kg, federado, 6 años jugando.
Solo tengo una habitación pequeña y una pared. 4 días por semana,
45 minutos. Estoy en pretemporada. Quiero mejorar el salto.
```

```
Quiero un plan de nutrición. Pívot, 27 años, 104 kg, profesional,
12 horas de entrenamiento a la semana, en plena temporada con
2 partidos por semana.
```

El agente **te entrevistará primero** —salud, perfil, implementos, disponibilidad, contexto— y no generará nada hasta tener los campos bloqueantes. No es fricción gratuita: es lo que impide que te prescriba material que no tienes o carga que no deberías.

### Qué esperar de su salida

Todo plan incluye, obligatoriamente: qué cubre **y qué no**, las sustituciones aplicadas con su motivo, la justificación de cada decisión con su principio y etiqueta de evidencia, y la advertencia de nivel de verificación.

---

## Cómo está construido

El orden importa: **primero la investigación, después el agente.** El agente no puede afirmar nada que no esté respaldado en la fase previa, y cada decisión suya es rastreable hasta su fuente en dos saltos.

| Carpeta | Contenido |
|---|---|
| [`01-investigacion/`](01-investigacion/) | Fisiología y demandas, lesiones y prevención, fuerza y potencia, carga, metodologías de liga, nutrición, **casos de éxito y benchmarks**, bibliografía |
| [`02-agente/`](02-agente/) | System prompt, protocolo de evaluación, motor de sustitución, reglas de seguridad |
| [`03-datos/`](03-datos/) | Catálogo de implementos, 73 ejercicios, 8 escenarios, fórmulas nutricionales |
| [`04-plantillas/`](04-plantillas/) | Formatos de salida: entrenamiento, nutrición, informe de progreso |
| [`05-salidas/`](05-salidas/) | Planes generados |

[`PLAN-DE-TRABAJO.md`](PLAN-DE-TRABAJO.md) documenta las fases, dependencias, riesgos y estado.

### Sistema de etiquetado

Toda afirmación sustantiva lleva marca:

- `[EVIDENCIA]` — respaldo en literatura indexada o consenso institucional, con cita.
- `[PRÁCTICA]` — convención de la industria, sin evidencia fuerte de eficacia.
- `[INFERENCIA]` — deducción propia, declarando de qué deriva.

Donde no se localizó evidencia, el texto dice literalmente **"sin evidencia sólida localizada"**. No se rellenó con contenido plausible: **no hay ni una sola fuente, autor, DOI o cita inventada en el proyecto.**

---

## Tres cosas que este proyecto hace distinto

**1. Documenta el ACWR junto con la crítica que lo impugna.** El ratio de carga aguda/crónica tiene objeciones metodológicas publicadas —acoplamiento matemático, artefactos estadísticos, ausencia de inferencia causal— y se solicitó formalmente la retractación de su figura más citada. El agente conserva el principio de progresión gradual y **no prescribe umbrales ni "zonas seguras"**.

**2. No inventa una metodología de liga.** FIBA, NBA y EuroLeague publican la existencia de sus programas de formación, no su contenido. No se localizó ningún protocolo NBA/NBPA de gestión de carga o retorno al juego, pese a que suele darse por supuesto que son públicos. El agente **no invoca "el método NBA" como autoridad**.

**3. No propone déficit calórico.** En baloncesto el problema documentado es la subalimentación: el 56 % de jugadores júnior de élite consume menos de 6 g/kg de carbohidrato. Proponer restricción en esta población empuja contra la evidencia.

---

## Límites

- **No es rehabilitación ni diagnóstico.** Ante dolor agudo, lesión activa o patología diagnosticada, el agente frena y deriva.
- **No calcula nutrición para menores en crecimiento.** Las fórmulas derivan de poblaciones adultas y no incorporan el coste del crecimiento.
- **No certifica que ninguna sustancia esté permitida.** No se pudo consultar la lista de la AMA/WADA; remite a la lista oficial vigente.
- **No sustituye a un profesional presencial.**

---

## Casos de éxito: contra qué se compara todo

[`01-investigacion/07-casos-de-exito-y-benchmarks.md`](01-investigacion/07-casos-de-exito-y-benchmarks.md) recoge las intervenciones con **resultado positivo documentado** —qué se hizo, en quién, con qué magnitud— y son la referencia contra la que el agente contrasta cada decisión.

| Intervención | Respaldo | Magnitud | ¿Transfiere? |
|---|---|---|---|
| Pliometría | ★★★ 32 estudios, 818 jugadores | Pequeño a grande | Salto y COD **sí**; esprint **no** |
| HIIT / RSA | ★★★ metaanálisis | Significativo | VO₂máx, velocidad, COD, RSA |
| Fuerza máxima | ★★ ECA n=21 | +36,5 % 1RM | Al 1RM **sí**; al gesto **no demostrado** |
| Prevención neuromuscular 2-3×/sem | ★★ frágil en baloncesto | IRR 0,64 | Lesión de miembro inferior |
| Proteína+CHO pre-partido | ★ ECA cruzado n=10 | CK 56 vs. 100 U·L⁻¹ | Daño muscular y tiro libre en el 4.º cuarto |
| Gestión de carga vía ACWR | ✗ impugnado | — | **No** |

Ese archivo incluye también los **contraejemplos** —dónde el efecto esperado no apareció— en la misma página y con el mismo peso. Una lista solo de éxitos sobreestima sistemáticamente lo que cabe esperar.

**El patrón que emerge, y es el hallazgo más útil del proyecto:** las intervenciones funcionan para lo que entrenan; la transferencia a otras cualidades falla más de lo que se asume. Si quieres una cualidad, entrénala directamente.

---

## Vacíos de evidencia más relevantes

Tras la segunda ronda de búsqueda (COI, NCAA, investigación universitaria), que cubrió lumbalgia, RSA, retorno al juego y comida pre-partido:

1. **Timing nutricional intra-partido y días dobles** — la comida pre-partido sí tiene un ECA específico de baloncesto; el resto del bloque, no.
2. **Dosificación de entrenamiento** — se sabe *qué* funciona, no *en qué dosis*. Requería abrir los metaanálisis.
3. **Alternativa validada al ACWR** — la crítica al modelo es sólida y **no hay sustituto con mejor respaldo**. Se sabe qué no usar, no qué usar.

Lista completa de temas buscados y no localizados en [`01-investigacion/99-bibliografia.md`](01-investigacion/99-bibliografia.md) §6, y casos de éxito que no se pudieron documentar en [`07-casos-de-exito-y-benchmarks.md`](01-investigacion/07-casos-de-exito-y-benchmarks.md) §5.

---

## Público objetivo

Entrenadores y preparadores físicos de baloncesto. Secundariamente, jugadores con criterio suficiente para aplicar un plan por su cuenta.
