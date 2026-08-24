# Agente de Entrenamiento y Nutrición de Baloncesto

Proyecto documental para construir un agente de IA capaz de generar entrenamientos funcionales y planes de nutrición para jugadores de baloncesto, adaptándose a cualquier escenario de implementos disponibles.

**Estado actual: Fase 0 cerrada.** La estructura existe; el contenido está pendiente. Ver [`PLAN-DE-TRABAJO.md`](PLAN-DE-TRABAJO.md) para el plan completo, las dependencias entre fases y el estado de avance.

---

## Principio de diseño

El agente no puede afirmar nada que no esté respaldado y citado en la fase de investigación previa. Cada decisión que tome debe ser rastreable, por un preparador físico que lea la documentación, hasta su fuente.

De ahí el orden de construcción: **primero la investigación, después el agente.** Las fases se ejecutan en secuencia y no se abre una sin cerrar la anterior.

## Sistema de etiquetado

Toda afirmación sustantiva del proyecto lleva una de estas marcas:

- `[EVIDENCIA]` — respaldo científico en literatura indexada o consenso institucional, con cita y DOI/PMID.
- `[PRÁCTICA]` — práctica común en la industria, sin evidencia fuerte que la sostenga.
- `[INFERENCIA]` — deducción propia, declarando de qué afirmaciones deriva.

Donde no se localiza evidencia, el texto dice literalmente `sin evidencia sólida localizada`. No se rellena con contenido plausible.

## Estructura

| Carpeta | Contenido |
|---|---|
| `01-investigacion/` | Fisiología, lesiones, fuerza, carga, metodologías de liga, nutrición, bibliografía |
| `02-agente/` | System prompt, protocolo de evaluación, motor de sustitución, reglas de seguridad |
| `03-datos/` | Catálogo de implementos, biblioteca de ejercicios, 8 escenarios, tablas nutricionales |
| `04-plantillas/` | Formatos de salida: plan de entrenamiento, plan de nutrición, informe de progreso |
| `05-salidas/` | Planes generados |

## Cómo usar el agente

> Disponible al cerrar la Fase 4b.

Abrir [`02-agente/SYSTEM-PROMPT.md`](02-agente/SYSTEM-PROMPT.md) y cargarlo como instrucción de sistema en el LLM que se prefiera. El agente aplicará primero el cuestionario de [`02-agente/protocolo-de-evaluacion-inicial.md`](02-agente/protocolo-de-evaluacion-inicial.md) y no generará ningún plan antes de tener respuesta a los campos obligatorios — incluido el listado exacto de implementos disponibles.

## Límites

- No es una herramienta de rehabilitación ni de diagnóstico. Ante dolor agudo, lesión activa o patología diagnosticada, el agente frena y deriva a un profesional sanitario.
- No recomienda sustancias prohibidas por la AMA/WADA ni restricciones calóricas agresivas.
- Menores de edad requieren supervisión.

## Público objetivo

Entrenadores y preparadores físicos de baloncesto. Secundariamente, jugadores con criterio suficiente para aplicar un plan por su cuenta.
