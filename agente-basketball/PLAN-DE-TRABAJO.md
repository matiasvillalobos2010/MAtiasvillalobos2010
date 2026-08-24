# Plan de trabajo — Agente de Entrenamiento y Nutrición de Baloncesto

**Estado del proyecto:** Fase 0 cerrada. Fase 1 pendiente de arranque.
**Rama de desarrollo:** `claude/basketball-training-agent-he067v`
**Última actualización:** 2026-08-24

---

## 1. Objetivo

Construir un agente de IA que genere entrenamientos funcionales y planes de nutrición para jugadores de baloncesto, adaptándose a cualquier escenario de implementos disponibles, donde **cada decisión del agente sea rastreable hasta una fuente verificada**.

El proyecto se entrega como documentación Markdown, no como código ejecutable. El "agente" es un system prompt operativo más las bases de datos (biblioteca de ejercicios, escenarios, tablas nutricionales) que consulta.

### Público objetivo

Entrenadores y preparadores físicos de baloncesto. Secundariamente, jugadores con criterio suficiente para aplicar un plan por su cuenta.

### Qué NO es este proyecto

- No es una herramienta de rehabilitación. El escenario de retorno tras lesión define criterios de progresión bajo supervisión, no sustituye a un fisioterapeuta.
- No es un servicio de diagnóstico. Ante dolor agudo, lesión activa o patología diagnosticada, el agente frena y deriva.
- No prescribe suplementación fuera de lo que tiene respaldo y estatus regulatorio limpio (AMA/WADA).

---

## 2. Regla dura que gobierna todo el proyecto

> **No se inventan fuentes, autores, estudios, DOIs ni citas de entrenadores.**
> Si no se encuentra evidencia para un punto, se escribe literalmente
> `sin evidencia sólida localizada` y se continúa.

Esta regla tiene precedencia sobre la exhaustividad. Un archivo con 12 afirmaciones citadas y 4 vacíos declarados es un entregable correcto. Un archivo con 16 afirmaciones donde 4 llevan citas plausibles pero no comprobadas es un entregable defectuoso.

### Sistema de etiquetado obligatorio

Cada afirmación sustantiva del proyecto lleva una de estas tres marcas:

| Etiqueta | Significado | Requisito |
|---|---|---|
| `[EVIDENCIA]` | Respaldo científico en literatura indexada o consenso institucional | Cita inline `[Autor et al., Año](URL)` + DOI/PMID cuando exista |
| `[PRÁCTICA]` | Práctica común en la industria, sin evidencia fuerte que la sostenga | Fuente que documente que la práctica existe; se declara la ausencia de evidencia de eficacia |
| `[INFERENCIA]` | Deducción propia a partir de lo anterior | Debe declarar de qué afirmaciones etiquetadas deriva |

Sin etiqueta = la afirmación no debería estar en el archivo.

### ⚠️ Restricción de red del entorno (comprobada 2026-08-24)

El entorno de ejecución tiene una política de egreso restrictiva. Comprobado empíricamente:

| Recurso | Estado |
|---|---|
| Búsqueda web (WebSearch) | ✅ Funciona — devuelve títulos, URLs y extractos |
| `pubmed.ncbi.nlm.nih.gov` | ❌ `EGRESS_BLOCKED` |
| `pmc.ncbi.nlm.nih.gov` | ❌ `EGRESS_BLOCKED` |
| `bjsm.bmj.com` | ❌ `EGRESS_BLOCKED` |
| `journals.plos.org` | ❌ `EGRESS_BLOCKED` |

**Consecuencia directa:** el criterio de calidad nº 1 del encargo — *"cada fuente citada existe y es accesible; verifica cada URL antes de incluirla"* — **no se puede cumplir en este entorno tal como está definido.** No es posible abrir ni un solo artículo.

Lo que sí permite la búsqueda web es confirmar que un trabajo existe, con su título, autoría, revista, año y URL, a partir de los resultados del buscador. Eso es *localización*, no *verificación directa*. La diferencia importa y no se puede disimular.

**Niveles de verificación que se usarán, según cómo se resuelva esta restricción:**

| Nivel | Significado |
|---|---|
| `V1 — abierta` | URL abierta directamente; contenido comprobado contra la afirmación |
| `V2 — localizada` | Existencia y metadatos confirmados por buscador; **contenido no comprobado directamente** |
| `V0 — no verificada` | Ni abierta ni localizada → la cita se elimina y la afirmación se borra o se marca como vacío |

Bajo la restricción actual, el máximo alcanzable es `V2`. Toda cita del proyecto tendría que llevar esa marca de forma visible, y `99-bibliografia.md` declararlo en cabecera. **Decisión pendiente del usuario** (ver §8).

### Formato de cita

```
[Apellido et al., Año](URL) — DOI: 10.xxxx/xxxxx | PMID: 00000000
```

`99-bibliografia.md` recoge la lista completa con fecha de acceso y estado de verificación.

---

## 3. Estructura de entregables

```
agente-basketball/
├── README.md                    ← punto de entrada, cómo usar el agente
├── PLAN-DE-TRABAJO.md           ← este archivo
├── 01-investigacion/
│   ├── 00-metodologia-y-fuentes.md
│   ├── 01-fisiologia-y-demandas-del-baloncesto.md
│   ├── 02-evidencia-clinica-lesiones-y-prevencion.md
│   ├── 03-entrenamiento-fuerza-y-potencia.md
│   ├── 04-acondicionamiento-y-carga.md
│   ├── 05-metodologias-fiba-nba-euroliga.md
│   ├── 06-nutricion-deportiva.md
│   └── 99-bibliografia.md
├── 02-agente/
│   ├── SYSTEM-PROMPT.md
│   ├── logica-de-adaptacion.md
│   ├── protocolo-de-evaluacion-inicial.md
│   └── reglas-de-seguridad.md
├── 03-datos/
│   ├── catalogo-implementos.md
│   ├── biblioteca-ejercicios.md
│   ├── escenarios-de-entrenamiento.md
│   └── tablas-nutricionales.md
├── 04-plantillas/
│   ├── plantilla-plan-entrenamiento.md
│   ├── plantilla-plan-nutricion.md
│   └── plantilla-informe-progreso.md
└── 05-salidas/
    └── .gitkeep
```

---

## 4. Fases, dependencias y criterios de cierre

Las fases se ejecutan **en orden**. No se abre una fase sin cerrar la anterior. En particular: **el agente no se construye antes de tener la investigación completa.**

| Fase | Entregable | Depende de | Criterio de cierre |
|---|---|---|---|
| **0** | Estructura de carpetas + README + plan | — | El árbol coincide exactamente con la especificación |
| **1** | `01`–`04` de investigación + `00-metodologia` | 0 | ≥40 fuentes indexadas verificadas; los 5 bloques temáticos cubiertos o declarados vacíos |
| **2** | `05-metodologias-fiba-nba-euroliga.md` | 1 | Los 3 ecosistemas documentados con filosofía / sesión / periodización / progresión, o vacío declarado |
| **3** | `06-nutricion-deportiva.md` + `03-datos/tablas-nutricionales.md` | 1 | Fórmulas calculables por peso, posición y fase de temporada |
| **3.5** | `99-bibliografia.md` + barrido de verificación de URLs | 1, 2, 3 | 100% de URLs citadas abiertas y comprobadas |
| **4a** | `03-datos/`: catálogo, biblioteca, escenarios | 1, 2, 3 | Cada ejercicio con ≥1 alternativa sin material; 8 escenarios con plan tipo |
| **4b** | `02-agente/`: system prompt, evaluación, adaptación, seguridad | 4a | Reglas de derivación activas **dentro** del system prompt |
| **4c** | `04-plantillas/`: 3 plantillas | 4b | Placeholders coherentes con el formato de salida del system prompt |
| **5** | Verificación final + resumen de cierre | todo | Checklist de 6 puntos ejecutada y reportada |

### Ruta crítica

```
Fase 1 ──> Fase 4a ──> Fase 4b ──> Fase 4c ──> Fase 5
   │                      ▲
   ├──> Fase 2 ───────────┤
   └──> Fase 3 ───────────┘
```

Fases 2 y 3 son paralelizables entre sí. Fase 4a es el cuello de botella real: la biblioteca de ejercicios no se puede escribir antes porque cada ejercicio necesita justificación trazable; el system prompt no se puede escribir antes que la biblioteca porque referencia sus identificadores.

### Política de commits

Commit y push **al cerrar cada fase**, no al final del proyecto. El contenedor de trabajo es efímero; lo que no está pusheado no existe.

---

## 5. Detalle por fase

### Fase 1 — Investigación clínica y fisiológica

**Archivos:** `00-metodologia-y-fuentes.md`, `01-fisiologia-y-demandas-del-baloncesto.md`, `02-evidencia-clinica-lesiones-y-prevencion.md`, `03-entrenamiento-fuerza-y-potencia.md`, `04-acondicionamiento-y-carga.md`

**Bloques a cubrir:**

1. **Demandas fisiológicas** — perfil metabólico, distancia recorrida, número de saltos, aceleraciones y cambios de dirección por partido, desglosado por posición (base / alero / pívot).
2. **Cualidades físicas determinantes** — fuerza máxima, potencia reactiva, RSA (*repeated sprint ability*, capacidad de repetir esprints), agilidad reactiva, movilidad de tobillo y cadera.
3. **Epidemiología de lesiones** — incidencia por tipo (esguince de tobillo, LCA, tendinopatía rotuliana, lumbalgia), factores de riesgo, protocolos de prevención con evidencia (programas neuromusculares, protocolos de isquiosurales, trabajo excéntrico).
4. **Gestión de carga** — ACWR (*acute:chronic workload ratio*, ratio de carga aguda/crónica) **incluyendo la crítica metodológica publicada contra el modelo**, monitorización por RPE (*rating of perceived exertion*, escala de esfuerzo percibido), criterios de recuperación.
5. **Poblaciones especiales** — jugador juvenil en crecimiento, jugadora (diferencias de riesgo de LCA), amateur vs. profesional.

**Fuentes admitidas:** PubMed / PMC, Cochrane, revistas indexadas (BJSM, JSCR, Sports Medicine, AJSM, IJSPP, Journal of Athletic Training), position stands de NSCA, ACSM, IOC, NATA, y documentación médica oficial de la FIBA Medical Commission.

**Nota sobre ACWR:** el modelo tiene crítica metodológica seria en la literatura reciente. Presentarlo como herramienta consolidada sin recoger esa crítica sería un fallo de rigor. Se documenta el modelo *y* sus objeciones.

**Cierre:** ≥40 fuentes verificadas, cada bloque cubierto o con vacío declarado.

---

### Fase 2 — Metodologías de entrenamiento oficiales

**Archivo:** `05-metodologias-fiba-nba-euroliga.md`

Para cada ecosistema: filosofía, estructura de la sesión, periodización utilizada, ejercicios clave y cómo se progresan.

- **FIBA** — FIBA Coaching, *Basketball Coaches Manual*, FIBA Europe Coaching Certificate, documentos de comisión técnica.
- **NBA** — NBSCA (National Basketball Strength & Conditioning Association), documentación pública de departamentos de performance, protocolos de carga y retorno al juego publicados por NBA/NBPA.
- **EuroLeague / Europa** — EuroLeague Basketball Institute, Adidas Next Generation, federaciones nacionales (ACB, Lega Basket, FFBB), escuelas de entrenadores europeas.

**Riesgo declarado por adelantado:** este es el capítulo con mayor probabilidad de vacío documental. Los departamentos de performance de franquicias NBA no publican sus protocolos, y buena parte del material FIBA/EuroLeague está tras registro. Donde no haya documento institucional primario accesible, se recurre a literatura indexada que *estudie* esas poblaciones, se etiqueta como tal, y se declara el vacío. No se rellena con contenido plausible.

**Cierre:** 3 ecosistemas documentados o con vacío declarado explícitamente.

---

### Fase 3 — Nutrición aplicada

**Archivos:** `06-nutricion-deportiva.md`, y su traducción operativa en `03-datos/tablas-nutricionales.md`

**Bloques:**

1. Requerimientos energéticos y de macronutrientes por posición, peso corporal y fase de temporada (pretemporada, temporada, playoffs, off-season).
2. Timing nutricional: pre-partido, intra-partido, ventana de recuperación, días dobles.
3. Hidratación y reposición de electrolitos.
4. Suplementación con evidencia (creatina, cafeína, beta-alanina, nitratos, vitamina D, proteína), con nivel de evidencia y estatus regulatorio.
5. Adaptaciones al contexto real: presupuesto limitado, vegetarianismo/veganismo, alergias, viajes y comida de hotel.

**Fuentes admitidas:** consenso del COI sobre nutrición deportiva, position stands de la ISSN, ACSM/AND/DC, guías nutricionales de NBA/NBPA, EuroLeague y federaciones FIBA, y literatura indexada.

**Requisito de diseño:** la salida no puede ser una tabla genérica. `tablas-nutricionales.md` debe contener **fórmulas parametrizadas** por peso corporal, posición y fase de temporada, de modo que el agente calcule sobre el deportista concreto.

**Cierre:** los 5 bloques cubiertos y las fórmulas calculables sin ambigüedad.

---

### Fase 3.5 — Bibliografía y verificación de URLs

**Archivo:** `99-bibliografia.md`

Barrido completo: cada URL citada en Fases 1-3 se abre y se comprueba. Estados posibles:

- `verificada` — abierta, contenido coincide con la afirmación
- `sustituida` — la original falló, se documenta la fuente que la reemplaza
- `eliminada` — no se localizó fuente accesible; la afirmación asociada se borró o se reetiquetó como vacío

Identificador primario = DOI o PMID. La URL es conveniencia, no ancla. Fecha de acceso obligatoria en cada entrada.

---

### Fase 4a — Datos

**Archivos:** `catalogo-implementos.md`, `biblioteca-ejercicios.md`, `escenarios-de-entrenamiento.md`

#### `catalogo-implementos.md`
Vocabulario controlado de implementos. Cada implemento con identificador estable. Los escenarios y los ejercicios se referencian a este catálogo, no a texto libre — así el chequeo de coherencia es mecánico.

#### `biblioteca-ejercicios.md`
Cada ejercicio lleva, como mínimo:

```
ID | Nombre | Patrón de movimiento | Cualidad entrenada
Implementos requeridos (IDs del catálogo)
Estímulo objetivo | Dosificación de referencia
Justificación → enlace a sección de 01-investigacion/
Alternativas equivalentes (≥1 sin material)
Contraindicaciones
```

**Decisión de diseño:** la biblioteca **no cita estudios por ejercicio**. Cita el *principio* del que deriva, enlazando a la sección correspondiente de la investigación. Trazabilidad por referencia interna, no por cita fabricada. Esto elimina la vía de fallo más probable del proyecto: empezar a inventar respaldos a mitad de una lista larga.

**Requisito duro:** todo ejercicio con ≥1 alternativa ejecutable sin material.

#### `escenarios-de-entrenamiento.md`
Ocho escenarios, cada uno con su plan tipo:

| # | Escenario | Implementos disponibles |
|---|---|---|
| 1 | Habitación, sin implementos, sin balón | ninguno |
| 2 | Balón y una pared | balón, pared |
| 3 | Cancha disponible, sin material de fuerza | cancha, canasta, balón |
| 4 | Material casero básico | bandas elásticas, mancuernas ligeras, esterilla |
| 5 | Gimnasio comercial estándar | máquinas, barras, discos, mancuernas |
| 6 | Centro de alto rendimiento | rack, plataforma, cajones pliométricos, trineo, GPS/wearables |
| 7 | Viaje / hotel | espacio reducido, mobiliario, quizá gimnasio mínimo |
| 8 | Retorno progresivo tras lesión | con supervisión profesional obligatoria |

Cada escenario declara su lista cerrada de implementos. El agente no puede prescribir nada fuera de esa lista.

**Escenario 8 — nota de riesgo:** no es un protocolo de rehabilitación. Define criterios de progresión y señales de parada bajo supervisión de un profesional sanitario. La derivación es obligatoria y se activa en el system prompt, no solo aquí.

---

### Fase 4b — El agente

**Archivos:** `SYSTEM-PROMPT.md`, `protocolo-de-evaluacion-inicial.md`, `logica-de-adaptacion.md`, `reglas-de-seguridad.md`

#### `SYSTEM-PROMPT.md`
Prompt operativo completo: rol, protocolo de entrevista inicial, lógica de generación del plan, formato de salida, y límites.

**Requisito no negociable:** las reglas de derivación a profesional van **dentro** de este archivo. Un system prompt que delegue la seguridad a "consulta el archivo de reglas" no protege a nadie — el modelo que lo ejecuta puede no tener ese archivo cargado.

#### `protocolo-de-evaluacion-inicial.md`
Cuestionario que el agente aplica **antes de generar nada**: edad, sexo, posición, nivel, años de práctica, historial de lesiones, días y minutos disponibles por semana, objetivo, momento de la temporada, y el listado exacto de implementos disponibles.

#### `logica-de-adaptacion.md`
Motor de sustitución. Dado un ejercicio y un escenario, resuelve a un ejercicio ejecutable con los implementos declarados, preservando patrón de movimiento y estímulo. Regla de fallo: si no hay sustitución válida, se omite el ejercicio y se declara la limitación — nunca se prescribe material que el deportista no tiene.

#### `reglas-de-seguridad.md`
Condiciones de parada y derivación: dolor agudo, lesión activa, patología diagnosticada, menores sin supervisión, señales de déficit energético relativo (RED-S) o conducta alimentaria de riesgo. Prohibición explícita de recomendar sustancias prohibidas por AMA/WADA o restricciones calóricas agresivas.

---

### Fase 4c — Plantillas

`plantilla-plan-entrenamiento.md`, `plantilla-plan-nutricion.md`, `plantilla-informe-progreso.md`.

Formato de salida del agente. Se escriben al final porque su estructura la fija el system prompt.

---

### Fase 5 — Verificación final

Checklist ejecutada y reportada antes de dar el proyecto por terminado:

- [ ] ¿Toda URL citada fue abierta y verificada? Las que fallaron, ¿se eliminaron o sustituyeron?
- [ ] ¿Hay alguna afirmación clínica sin fuente?
- [ ] ¿Hay alguna cita reproducida de memoria sin comprobación directa? → marcar como no verificada o eliminar.
- [ ] ¿El agente prescribe en algún escenario un implemento que ese escenario no incluye?
- [ ] ¿Cada ejercicio de la biblioteca tiene al menos una alternativa sin material?
- [ ] ¿Las reglas de derivación están activas en el system prompt, no solo en un archivo aparte?

**Test adicional de trazabilidad:** tomar 3 decisiones del agente al azar y comprobar que se llega a su fuente en ≤2 saltos.

**Resumen de cierre a entregar:**
- Árbol de archivos generados.
- Número de fuentes citadas, desglosado por tipo (estudios indexados / documentos institucionales / metodología de liga).
- Las 3 limitaciones o vacíos de evidencia más relevantes encontrados.
- Cómo usar el agente: qué archivo abrir y qué pedirle.

---

## 6. Riesgos identificados y mitigaciones

| # | Riesgo | Nivel | Mitigación |
|---|---|---|---|
| 1 | Fuentes NBA/EuroLeague inaccesibles o tras login | Alto | Apoyarse en literatura indexada sobre esas poblaciones; declarar el vacío institucional |
| 2 | Deriva a contenido plausible sin citar en listas largas | Alto | Biblioteca cita principios con enlace interno, no estudios por ejercicio |
| 3 | Escenario 8 roza prescripción clínica | Alto | Marco de criterios bajo supervisión; derivación obligatoria en el system prompt |
| 4 | Escenarios 1 y 2 colisionan si la biblioteca no distingue con/sin balón | Medio | Flags de implementos por ID de catálogo, no prosa |
| 5 | Cálculo nutricional en menores con ecuaciones de adulto | Medio | Rama específica o bloqueo con derivación |
| 6 | Link rot | Medio | DOI/PMID como identificador primario; fecha de acceso |
| 7 | Contenedor efímero, proyecto largo | Medio | Commit y push al cerrar cada fase |
| 8 | Volumen de investigación desborda el presupuesto de contexto | Medio | Un archivo por sesión de trabajo; el plan mantiene el estado entre sesiones |

---

## 7. Decisión pendiente antes de abrir la Fase 1

La restricción de red descrita en §2 obliga a elegir cómo se procede. Las tres vías:

**A — Proceder con verificación `V2`.** Se investiga con búsqueda web. Cada cita lleva marcado que sus metadatos están confirmados pero su contenido no se abrió directamente. El proyecto avanza completo; el rigor declarado baja un escalón respecto al encargo original, pero de forma explícita y auditable, nunca disimulada.

**B — Habilitar acceso de red y proceder con `V1`.** Requiere un entorno cuya política de egreso permita `pubmed.ncbi.nlm.nih.gov`, `pmc.ncbi.nlm.nih.gov` y los dominios de las revistas indexadas. Es la única vía que cumple el encargo tal como está escrito.

**C — Vía mixta.** Se construye ahora todo lo que no depende de verificación de fuentes (catálogo de implementos, esqueleto de escenarios, motor de sustitución, plantillas, reglas de seguridad en su parte estructural), y la investigación citada queda pendiente de un entorno con acceso. Reduce el tiempo perdido pero deja el proyecto a medias por diseño.

Sin esta decisión no se abre la Fase 1: empezar a citar sin definir el nivel de verificación es exactamente el fallo que la regla dura del §2 existe para impedir.

---

## 8. Estado de avance

| Fase | Estado | Fecha |
|---|---|---|
| 0 — Estructura | ✅ Cerrada | 2026-08-24 |
| 1 — Investigación clínica | ⬜ Pendiente | — |
| 2 — Metodologías | ⬜ Pendiente | — |
| 3 — Nutrición | ⬜ Pendiente | — |
| 3.5 — Bibliografía y verificación | ⬜ Pendiente | — |
| 4a — Datos | ⬜ Pendiente | — |
| 4b — Agente | ⬜ Pendiente | — |
| 4c — Plantillas | ⬜ Pendiente | — |
| 5 — Verificación final | ⬜ Pendiente | — |

Actualizar esta tabla al cerrar cada fase, junto con el commit correspondiente.
