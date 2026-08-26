# Fuentes multimedia para ejercicios

> **Actualizado 2026-08-26.** Se descubrió que **GitHub sí es alcanzable** desde este entorno a través del proxy git de la sesión, aunque las fuentes científicas siguen bloqueadas. Eso permitió **descargar, verificar e integrar** `free-exercise-db`. El resto de fuentes de esta página siguen sin verificar.

## 0. Integración realizada: free-exercise-db

**Licencia comprobada leyendo `LICENSE.md` del propio repositorio:** Unlicense — dominio público, uso libre incluido comercial.

**Contenido real del conjunto de datos**, no el declarado por un buscador:

| | |
|---|---|
| Ejercicios | 873 |
| Imágenes | 2 por ejercicio (posición inicial y final) |
| Peso medio por imagen | ~38 KB |
| Campos | nombre, equipo, nivel, mecánica, categoría, músculos primarios y secundarios, instrucciones paso a paso |
| Vocabulario de equipo | body only, barbell, dumbbell, machine, cable, bands, kettlebells, medicine ball, exercise ball, foam roll, e-z curl bar, other |
| Categorías | strength (581), stretching (123), plyometrics (61), powerlifting (38), olympic weightlifting (35), strongman (21), cardio (14) |

### Correspondencias integradas — 13 de nuestros 24 ejercicios

| Nuestro | free-exercise-db | Correspondencia |
|---|---|---|
| `ROD-01` Sentadilla peso corporal | `Bodyweight_Squat` | Exacta |
| `ROD-06` Zancada caminando | `Bodyweight_Walking_Lunge` | Exacta |
| `ROD-07` Subida al escalón | `Step-up_with_Knee_Raise` | ⚠ La foto muestra la variante con elevación de rodilla |
| `CAD-01` Puente de glúteo | `Butt_Lift_Bridge` | Exacta |
| `CAD-02` Puente a una pierna | `Single_Leg_Glute_Bridge` | Exacta |
| `CAD-06` Curl nórdico asistido | `Floor_Glute-Ham_Raise` | Exacta |
| `SUP-01` Flexión de brazos | `Pushups` | Exacta |
| `SUP-07` Remo invertido | `Inverted_Row` | ⚠ La foto usa barra en rack; nuestra versión usa mesa |
| `CORE-01` Plancha frontal | `Plank` | Exacta |
| `CORE-02` Plancha lateral | `Side_Bridge` | Exacta |
| `PLI-01` Salto con contramovimiento | `Rocket_Jump` | Exacta |
| `PLI-06` Salto horizontal | `Standing_Long_Jump` | Exacta |
| `PLI-07` Salto lateral | `Lateral_Bound` | Exacta |

### Cuatro candidatos descartados tras leer sus instrucciones

**Este es el paso que evita mostrar el ejercicio equivocado.** Los cuatro coincidían por nombre y ninguno era el mismo movimiento:

| Candidato | Para | Por qué se descartó |
|---|---|---|
| `Split_Squats` | `ROD-05` Zancada estática | **No es estática.** Sus instrucciones describen saltos alternando piernas en el aire |
| `Standing_Calf_Raises` | `PREV-03` Elevación de talones | **Requiere máquina.** Nuestra versión es sin material |
| `Rope_Jumping` | `PLI-03` Saltos repetidos | **Requiere cuerda**, y está catalogado como cardio, no pliometría |
| `Lateral_Cone_Hops` | `PLI-07` Salto lateral | **Requiere conos.** Mostrarlo violaría nuestra propia regla de no enseñar material que el escenario no incluye. Sustituido por `Lateral_Bound`, que es sin material |

### El hallazgo que conviene retener

**La base cubre bien el gimnasio clásico y casi nada del trabajo preventivo, de aterrizaje y de propiocepción.** Sin correspondencia adecuada quedaron, entre otros: sentadilla isométrica en pared, bisagra de cadera sin carga, deslizamiento de talón, tracción isométrica de escápulas, aterrizaje con congelación, aterrizaje con corrección de valgo, equilibrio monopodal, almeja, movilidad de tobillo y carrera en el sitio.

Es decir: **justo la parte con mejor evidencia para baloncesto es la que las bases de datos genéricas de fitness no cubren.** Para esos once ejercicios se conserva únicamente la animación esquemática propia.

---

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

### Revisada y descartada: hasaneyldrm/exercises-dataset

1.324 ejercicios con **GIF animados** y instrucciones en 10 idiomas incluido español. Revisión completa en [`revision-exercises-dataset.md`](revision-exercises-dataset.md).

**Los datos son MIT; los medios no.** Su `LICENSE` incluye una *Media Exception* y un `NOTICE.md`: las imágenes y los GIF son © Gym visual, incluidos con permiso escrito **para ese repositorio**, y dice literalmente que *clonar el repositorio no otorga ninguna licencia sobre los medios*. No se usan.

Sirve, eso sí, como hoja de ruta si algún día se licencia ese material directamente con Gym visual: cada registro trae el `media_id` que mapea a su catálogo.

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
