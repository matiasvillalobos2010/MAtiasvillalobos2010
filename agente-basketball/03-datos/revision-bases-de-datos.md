# Revisión de bases de datos de ejercicios

Cuatro repositorios revisados **clonándolos y leyendo sus archivos de licencia**, no su descripción.

---

## Resumen

| Repositorio | Contenido | Licencia de los medios | ¿Usable? |
|---|---|---|---|
| [`yuhonas/free-exercise-db`](https://github.com/yuhonas/free-exercise-db) | 873 ejercicios · 2 fotos c/u | **Unlicense** (dominio público) | ✅ **Integrado** — 13 ejercicios |
| [`RepDB/exercise-dataset`](https://github.com/RepDB/exercise-dataset) | 250 ejercicios · ilustraciones · **español nativo** | Licencia propia: uso en apps con atribución | ✅ **Integrado** — 2 ejercicios |
| [`hasaneyldrm/exercises-dataset`](https://github.com/hasaneyldrm/exercises-dataset) | 1.324 ejercicios · **GIF animados** | © Gym visual — permiso solo para ese repo | ❌ **No** |
| [`JahelCuadrado/ExerciseGymGifsDB`](https://github.com/JahelCuadrado/ExerciseGymGifsDB) | 1.323 GIF · API por CDN | **Sin licencia** | ❌ **No** |

---

## 1. RepDB/exercise-dataset — la mejor de las cuatro

**250 ejercicios curados**, no un volcado de 1.300. Es la diferencia que se nota.

### Lo que la hace distinta

- **Español nativo, no traducción automática.** Nombre, descripción, instrucciones **y consejos**, todo en `_es`. Ejemplo real: *«Activa el core antes de cada repetición — no dejes que la lumbar se arquee.»*
- **Metadatos que encajan con nuestro recomendador:** `goals` (hypertrophy, strength…), `tags`, `is_unilateral`, `is_bodyweight`, `met`, dificultad.
- **Ilustraciones propias**, generadas con herramientas de IA encargadas por RepDB — no copiadas de terceros. Eso elimina el problema de procedencia que hunde a las otras dos.
- Imágenes en dos fases (`start` y `peak`) o una (`main`), en WebP.

### Su licencia, que es la clave

Separa `LICENSE-CODE` (MIT, para el código) de `LICENSE-DATA.md` (licencia propia, para datos e imágenes). Lo relevante:

| Término | Qué significa para nosotros |
|---|---|
| 1. Uso libre **dentro de aplicaciones**, personal y comercial | ✅ Nuestra guía es una aplicación |
| 2. **Atribución visible obligatoria** | ✅ Añadida en el pie y en cada ficha |
| 3. **Prohibido redistribuir como conjunto de datos**, API o repositorio de datos | ⚠️ Por eso usamos **2 imágenes seleccionadas dentro de la app**, no el conjunto |
| 5. Prohibido usar las imágenes para derivar modelos generativos | ✅ No se hace |
| 6. Las animaciones de `premium-samples/` son **solo para evaluar** | ❌ No se usan |

### Qué integramos

| Nuestro | RepDB | Por qué |
|---|---|---|
| `ROD-08` Sentadilla isométrica en pared | `wall-sit` | Hueco que ninguna otra base cubría |
| `PREV-05` Almeja / abducción lateral | `clamshells` | Hueco del bloque preventivo |

**No sustituimos `CAD-06`** por su `nordic-hamstring-curl`: su ilustración muestra la variante en máquina GHD, y la foto que ya teníamos de `free-exercise-db` es la asistida en suelo, que es la que nosotros prescribimos. **La mejor correspondencia gana, no la fuente más nueva.**

### Si quisieras más

El nivel de pago añade el catálogo completo, imágenes a 1024 px, fondos transparentes y **animaciones**. Es la vía limpia si quieres animación real: <https://repdb.co/pricing>.

---

## 2. hasaneyldrm/exercises-dataset — buenos GIF que no podemos tocar

1.324 ejercicios con **GIF animados** e instrucciones en 10 idiomas. Justo el formato que faltaba.

**La licencia está partida y el reparto no nos favorece.** El `LICENSE` es MIT pero incluye una sección *Media Exception*, y hay un `NOTICE.md` aparte:

> The MIT license (…) **DOES NOT cover the exercise media** in the `images/` and `videos/` directories. (…) **Cloning this repository does not grant you any license to the media; obtain your own from Gym visual.**

Los medios son **© Gym visual**, incluidos con permiso escrito **para ese repositorio concreto**. Ese permiso no se transfiere a quien clona.

**Los datos sí son MIT** e incluyen buen español, pero su valor marginal para nosotros es bajo: nuestras fichas ya tienen instrucciones en español escritas para baloncesto, con errores frecuentes y contraindicaciones.

**Lo que sí conviene copiar de este repositorio no son datos, es una práctica:** separar la licencia del código de la de los medios con un `NOTICE.md` explícito. Es correcto y poco común.

---

## 3. JahelCuadrado/ExerciseGymGifsDB — no se puede usar

1.323 GIF servidos por CDN, con API multilingüe. Técnicamente está bien montado. **No tiene ningún archivo de licencia**, y el propio README lo explica:

> «Esta API ha sido creada recopilando imágenes y GIFs **extraídos de Internet. No poseo los derechos de autor** sobre esas imágenes **y no puedo conceder derechos sobre las mismas a terceros**.»

Es el autor diciendo explícitamente que no puede darnos permiso. Sin licencia, el derecho de autor por defecto es «todos los derechos reservados».

**Y hay más:** sus nombres de ejercicio coinciden exactamente con el catálogo de Gym visual — *Arm Slingers Hanging Bent Knee Legs*, *Assisted Motion Russian Twist*, *Otis Up* — y el recuento es 1.323 frente a los 1.324 del repositorio anterior. **Son, con toda probabilidad, los mismos medios de Gym visual, extraídos sin permiso.**

### El contraste que enseña algo

Dos repositorios con lo que parece el mismo material y posturas legales opuestas:

| | hasaneyldrm | JahelCuadrado |
|---|---|---|
| Origen del material | Gym visual | Gym visual (aparente) |
| Permiso | **Escrito, del titular** | Ninguno |
| Condiciones | Documentadas: 180×180, atribución | Ninguna |
| Qué dice el autor | «Obtén tu propia licencia» | «No poseo los derechos» |

**Ninguno de los dos nos sirve, pero solo uno está bien hecho.** Que un repositorio sea fácil de clonar no dice nada sobre si puedes usarlo.

---

## 4. El patrón, ya confirmado cuatro veces

| Lo que sobra en todas | Lo que falta en todas |
|---|---|
| 80 variantes de sentadilla | Salto con contramovimiento |
| 39 variantes de flexión | Saltos repetidos tipo *pogo* |
| 39 variantes de elevación de talones | Aterrizaje con congelación |
| 21 variantes de zancada | Deslizamiento de talón excéntrico |
| | Movilidad de tobillo en flexión dorsal |
| | Equilibrio monopodal con perturbación |

RepDB rescató dos (`wall-sit`, `clamshells`) por ser una base curada en vez de un volcado. El resto sigue sin cubrir.

**Cuatro bases, cuatro autores distintos, el mismo agujero.** No es casualidad: **el mercado de las bases de datos de fitness es el gimnasio, no la prevención deportiva.** Y la prevención es justo donde nuestro proyecto tiene la mejor evidencia — el bloque `PREV-`, con la única dosis respaldada de todo el trabajo.

Por eso la animación esquemática propia no es un apaño provisional: **es la única cobertura posible para la parte que más importa.**

---

## 5. Método de revisión

Para las cuatro:

1. Clonar el repositorio, no leer su descripción.
2. **Leer `LICENSE`, `NOTICE`, `ATTRIBUTION` y el README completo** — la excepción de medios de hasaneyldrm y el descargo de JahelCuadrado están ahí y no en la portada.
3. Inspeccionar la estructura y el vocabulario reales.
4. Buscar nuestros ejercicios y **leer las instrucciones de cada candidato**, no solo su nombre.
5. Integrar solo lo que la licencia permite, con la atribución que exija.
