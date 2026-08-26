# Fuentes multimedia para ejercicios

> **Estado: candidatas, NO verificadas.** No se pudo abrir ninguna de estas fuentes — el entorno bloquea todo acceso de red. Se documentan por nombre y licencia declarada para que alguien con conexión las evalúe, **no para enlazarlas a ciegas**.

---

## 1. Por qué este proyecto no enlaza vídeos de terceros

Enlazar un vídeo que no se ha visto es el mismo fallo que citar un estudio que no se ha abierto, con un agravante: un identificador equivocado de YouTube no da error, **da otro vídeo**. Puede ser publicidad, puede ser una técnica peligrosa, puede ser cualquier cosa.

Añádase que la mayoría del material de demostración de ejercicios está bajo copyright y su incrustación en un producto propio tiene implicaciones de licencia que este proyecto no puede resolver.

**Decisión tomada:** las demostraciones visuales de [`../06-app/guia-ejecucion.html`](../06-app/guia-ejecucion.html) —animación del movimiento y mapa muscular— están **dibujadas en el propio código**. Son originales, funcionan sin conexión, no dependen de ningún servicio externo y no tienen problema de licencia.

Es una solución peor que un buen vídeo real y mejor que un enlace no comprobado.

---

## 2. Candidatas de licencia libre

Localizadas por búsqueda; **licencia según lo que declara cada fuente, sin comprobar**.

| Fuente | Qué ofrece | Licencia declarada | Nota |
|---|---|---|---|
| [Wikimedia Commons — Animations of physical exercises](https://commons.wikimedia.org/wiki/Category:Animations_of_physical_exercises) | Animaciones de ejercicios | CC / dominio público | La categoría existe; su contenido y calidad, sin comprobar |
| [Wikimedia Commons — Animations of exercise](https://commons.wikimedia.org/wiki/Category:Animations_of_exercise) | Animaciones de ejercicio | CC / dominio público | Ídem |
| [Wikimedia Commons — Videos of human anatomy](https://commons.wikimedia.org/wiki/Category:Videos_of_human_anatomy) | Vídeo anatómico | CC / dominio público | Útil para el mapa muscular, no para técnica |
| [yuhonas/free-exercise-db](https://github.com/yuhonas/free-exercise-db) | ~800 ejercicios en JSON **con imágenes** | **Dominio público** | La más prometedora: licencia limpia y datos estructurados |
| [wger](https://github.com/nopinter/wger) | Base de ejercicios con API REST | Código abierto | Imágenes estáticas, sin animaciones según lo recuperado |
| [AnatomyTOOL](https://anatomytool.org/anatomy-learning-resources-which-are-open) | Índice de recursos anatómicos abiertos | Variable por recurso | Es un directorio, hay que evaluar recurso a recurso |

### Descartadas para incrustar

**ExerciseDB** y **WorkoutX** ofrecen catálogos grandes de GIF animados con planes gratuitos, pero **su licencia de redistribución no está clara** en lo recuperado. Un plan gratuito de API no equivale a permiso para incrustar el material en un producto propio. No se usan sin leer sus términos.

---

## 3. Cómo integrarlas, si se decide hacerlo

1. **Empezar por `free-exercise-db`**: es la única con licencia de dominio público declarada y datos estructurados.
2. **Comprobar cada archivo individualmente.** Que el repositorio declare dominio público no garantiza que cada imagen lo sea.
3. **Mapear sus identificadores a los de [`biblioteca-ejercicios.md`](biblioteca-ejercicios.md).** No adoptar su nomenclatura: rompería la trazabilidad del proyecto.
4. **Descargar y alojar localmente.** Depender de un servicio externo hace que la guía deje de funcionar el día que ese servicio cambie.
5. **Conservar las animaciones propias como respaldo**, para que la guía siga funcionando sin conexión.

---

## 4. Lo que aporta la solución actual

| | Animación propia | Vídeo de terceros |
|---|---|---|
| Verificable por quien la construyó | ✅ | ❌ en este entorno |
| Funciona sin conexión | ✅ | ❌ |
| Sin problema de licencia | ✅ | Depende |
| Muestra el patrón de movimiento | ✅ esquemático | ✅ real |
| Muestra el detalle técnico fino | ❌ | ✅ |
| Se puede pausar y examinar | ✅ | ✅ |

**Dónde se queda corta, y hay que decirlo:** una figura esquemática lateral muestra el patrón, no el detalle. No enseña la posición exacta del pie, ni el gesto de la mano, ni el matiz que distingue una técnica buena de una aceptable. Para eso hace falta vídeo real o, mejor, un profesional presencial mirando.

Por eso cada ficha de la guía lleva **errores frecuentes descritos**: es la forma de transmitir por escrito lo que un vídeo enseñaría por imitación.
