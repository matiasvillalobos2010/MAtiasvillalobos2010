# Metodología y fuentes

Este archivo define cómo se ha investigado, qué se admite como fuente, y — sobre todo — **qué nivel de comprobación tiene realmente cada cita del proyecto**. Léelo antes que cualquier otro archivo de `01-investigacion/`: sin él, las citas que siguen aparentan más solidez de la que tienen.

---

## 1. La restricción que condiciona todo el proyecto

El entorno de ejecución en el que se produjo esta investigación tiene una política de egreso de red restrictiva. Comprobado empíricamente el 2026-08-24:

| Recurso | Resultado |
|---|---|
| Búsqueda web | ✅ Funciona |
| `pubmed.ncbi.nlm.nih.gov` | ❌ `EGRESS_BLOCKED` |
| `pmc.ncbi.nlm.nih.gov` | ❌ `EGRESS_BLOCKED` |
| `bjsm.bmj.com` | ❌ `EGRESS_BLOCKED` |
| `journals.plos.org` | ❌ `EGRESS_BLOCKED` |
| `doi.org` | ❌ `EGRESS_BLOCKED` |
| Europe PMC (API REST) | ❌ `EGRESS_BLOCKED` |

**Consecuencia:** no se pudo abrir ni un solo artículo. El encargo original pedía verificar cada URL antes de incluirla; eso no era ejecutable en este entorno. Lo que sí permitió el buscador fue confirmar que un trabajo existe, con su título, autoría, revista, año y URL, y recuperar extractos de su contenido.

Eso es **localizar** una fuente, no **verificarla**. La diferencia es material y está declarada en cada cita.

---

## 2. Niveles de verificación

Todo el proyecto usa esta escala. Aparece marcada en cada cita y en `99-bibliografia.md`.

| Nivel | Significado | Presente en este proyecto |
|---|---|---|
| `V1` | URL abierta directamente; contenido comprobado contra la afirmación que sostiene | ❌ Ninguna — el entorno lo impidió |
| `V2` | Existencia, metadatos y extracto de contenido confirmados vía buscador; **artículo no abierto** | ✅ Todas las citas del proyecto |
| `V0` | Ni abierta ni localizada | Se elimina; la afirmación se borra o se marca como vacío |

**Toda cita de este proyecto es `V2`.** No se marca una por una para no convertir el texto en ruido: se declara aquí, en cabecera de cada archivo de investigación, y en `99-bibliografia.md`.

### Qué implica `V2` en la práctica

Tres limitaciones concretas que el lector debe tener presentes:

1. **La atribución de un dato concreto a un estudio concreto puede fallar.** Los extractos de buscador mezclan resultados de varias fuentes en una misma respuesta. Cuando varios trabajos recuperados podían ser el origen de una cifra, se indica la ambigüedad en el propio texto en lugar de elegir uno y aparentar precisión.
2. **No se ha podido leer el apartado de métodos de ningún estudio.** No se puede juzgar tamaño muestral, calidad del diseño, conflictos de interés ni riesgo de sesgo más allá de lo que el extracto declare.
3. **No se ha podido comprobar el contexto de una cifra.** Un dato aislado en un extracto puede venir de un subgrupo, de una condición experimental concreta o de una población que no es la que aquí interesa.

**Antes de usar profesionalmente cualquier dato de estos archivos, ábrelo en su fuente.** Los DOI y PMID están recogidos precisamente para eso.

---

## 3. Sistema de etiquetado

Independiente del nivel de verificación. Responde a "¿de qué tipo es esta afirmación?", no a "¿la he comprobado?".

| Etiqueta | Significado | Requisito |
|---|---|---|
| `[EVIDENCIA]` | Respaldo en literatura indexada o consenso institucional | Cita con identificador |
| `[PRÁCTICA]` | Práctica común de la industria, sin evidencia fuerte de eficacia | Fuente que documente que la práctica existe; se declara la ausencia de evidencia |
| `[INFERENCIA]` | Deducción propia | Debe declarar de qué afirmaciones etiquetadas deriva |

Una afirmación sin etiqueta no debería estar en el archivo.

**Nota sobre la fuerza de la evidencia:** `[EVIDENCIA]` no significa "probado". Significa "hay literatura indexada que lo sostiene". Cuando esa literatura es débil, heterogénea o contradictoria, se dice en el texto. Un metaanálisis con alta heterogeneidad y estudios infrapotenciados sigue siendo `[EVIDENCIA]`, pero evidencia frágil, y así se declara.

---

## 4. Estrategia de búsqueda

**Bases y vías consultadas:** búsqueda web general, dirigida a resultados de PubMed/PMC, revistas indexadas (BJSM, JSCR, Sports Medicine, AJSM, IJSPP, Journal of Athletic Training, Scandinavian Journal of Medicine & Science in Sports, PLOS One, Frontiers), y documentos de posicionamiento de NSCA, ACSM, IOC y NATA.

**Criterios de inclusión:**
- Prioridad a revisiones sistemáticas y metaanálisis sobre estudios primarios aislados.
- Prioridad a población de baloncesto sobre deportes de equipo genéricos; cuando solo hay evidencia de otro deporte, se declara y se marca la extrapolación como `[INFERENCIA]`.
- Position stands institucionales admitidos como `[EVIDENCIA]` cuando son de NSCA, ACSM, IOC, NATA, ISSN o FIBA.

**Criterios de exclusión:**
- Blogs, medios divulgativos y sitios comerciales **no se admiten como respaldo de una afirmación clínica**. Cuando aparecen en los resultados, se descartan o, si aportan una cifra que ninguna fuente indexada localizada sostiene, se marca explícitamente como fuente no indexada.
- Cualquier fuente que no se pudo localizar con título, autoría y revista.

**Jerarquía aplicada:** metaanálisis y revisiones sistemáticas > estudios de cohorte y epidemiológicos multicéntricos > estudios primarios aislados > consenso institucional sin revisión sistemática > práctica documentada sin evidencia.

---

## 5. Distinción 5×5 vs. 3×3

El baloncesto 3×3 es un deporte con demandas propias. Buena parte de la literatura reciente sobre carga externa está hecha sobre 3×3 porque el formato facilita la instrumentación. **Sus cifras no son trasladables al 5×5** y aquí se marcan siempre como tales. Confundirlas es un error frecuente en material divulgativo.

---

## 6. Política ante link rot

- **Identificador primario:** DOI o PMID. Es lo que sobrevive.
- **URL:** conveniencia, no ancla.
- **Fecha de acceso:** obligatoria en cada entrada de `99-bibliografia.md`.

---

## 7. Regla dura

> No se inventan fuentes, autores, estudios, DOIs ni citas de entrenadores.
> Donde no se localizó evidencia, el texto dice literalmente `sin evidencia sólida localizada`.

Esta regla tiene precedencia sobre la exhaustividad. Un capítulo con vacíos declarados es un entregable correcto; un capítulo completo a base de citas plausibles no lo es.

---

## 8. Limitaciones metodológicas asumidas

1. **Ninguna fuente abierta directamente** (ver §1 y §2). Es la limitación dominante.
2. **Sesgo del buscador.** Lo recuperado depende del algoritmo de búsqueda y de los términos empleados, en inglés. No es una revisión sistemática: no hay protocolo registrado, ni cribado por pares, ni evaluación formal de riesgo de sesgo.
3. **Sesgo de publicación no evaluable.** Sin acceso a los estudios no se puede valorar.
4. **Cobertura desigual esperada.** La documentación institucional de ligas (NBA, EuroLeague) es en buena medida privada; ese vacío se declara en `05-metodologias-fiba-nba-euroliga.md` en lugar de rellenarse.
