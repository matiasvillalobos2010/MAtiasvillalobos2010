# Revisión: hasaneyldrm/exercises-dataset

**Revisado el 2026-08-26** clonando el repositorio y leyendo sus archivos, no su descripción.

---

## Veredicto

**Los vídeos no se pueden usar. Los datos sí, pero apenas nos aportan.**

Es un repositorio bien hecho y honesto con su propia licencia. El problema es que la parte que resolvería nuestra carencia —las animaciones— es exactamente la parte que su licencia no cede.

---

## 1. La licencia está partida, y el reparto no nos favorece

El repositorio tiene `LICENSE` (MIT) **y** un `NOTICE.md`. Leer solo el primero llevaría a una conclusión equivocada.

| Parte | Licencia | ¿Podemos usarla? |
|---|---|---|
| Código, estructura del conjunto de datos | MIT | ✅ |
| Nombres, categorías, equipo, músculos | MIT | ✅ |
| **Instrucciones paso a paso en 10 idiomas** | MIT | ✅ |
| **`images/` — 1.324 miniaturas** | © Gym visual | ❌ |
| **`videos/` — 1.324 GIF animados** | © Gym visual | ❌ |

El propio `LICENSE` lo dice en una sección titulada *Media Exception*:

> The MIT license above covers ONLY the code, tooling, dataset structure, and instruction text/translations. It DOES NOT cover the exercise media in the `images/` and `videos/` directories. (…) **Cloning this repository does not grant you any license to the media; obtain your own from Gym visual.**

Y `NOTICE.md` lo repite:

> **This repository does not grant you any rights to the media beyond what Gym visual's terms allow — cloning this repo is not a license.**

Los medios están ahí con **permiso escrito del titular para ese repositorio concreto**, a 180×180 y con atribución obligatoria. Ese permiso no se transfiere a quien clona.

**Conclusión:** copiar esos GIF a nuestro proyecto sería usar material con copyright sin licencia. No se hace.

---

## 2. Qué contiene realmente

| | |
|---|---|
| Ejercicios | 1.324 |
| Medios | 1 JPG + 1 GIF animado por ejercicio, 180×180 |
| Idiomas de las instrucciones | en, es, it, tr, ru, zh, hi, pl, ko, fr |
| Campos | id, nombre, categoría, body_part, equipment, target, muscle_group, secondary_muscles, instructions, instruction_steps, media_id, attribution |
| Peso del repositorio | 295 MB (126 MB solo de vídeos) |

**El español es de buena calidad**, no traducción automática descuidada. Ejemplo real del conjunto de datos:

> «Activa los glúteos y levanta las caderas del suelo, formando una línea recta desde las rodillas hasta los hombros.»

---

## 3. El solapamiento con lo que nos falta es casi nulo

Buscados nuestros 24 ejercicios de la guía. El patrón se repite:

| Lo que sobra | Lo que falta |
|---|---|
| 80 variantes de sentadilla | Salto con contramovimiento (CMJ): **0** |
| 39 variantes de flexión | Saltos repetidos tipo *pogo*: **0** |
| 39 variantes de elevación de talones | Aterrizaje con congelación: **0** |
| 21 variantes de zancada | Curl nórdico: **0** |
| | Deslizamiento de talón: **0** |
| | Almeja / abducción en decúbito lateral: **0** |
| | Movilidad de tobillo en flexión dorsal: **0** |

**Es la segunda confirmación independiente del mismo hallazgo.** Igual que `free-exercise-db`, esta base cubre exhaustivamente el entrenamiento de gimnasio y **no cubre el trabajo neuromuscular preventivo, de aterrizaje ni de propiocepción** — que es justamente la parte con mejor evidencia para baloncesto y la que sostiene el bloque `PREV-` de nuestra biblioteca.

Dos bases grandes, construidas por gente distinta, con el mismo agujero. No es casualidad: **el mercado de las bases de datos de fitness es el gimnasio, no la prevención deportiva.**

---

## 4. Qué haríamos con los datos MIT, si quisiéramos

Lo aprovechable son las instrucciones en español. Pero:

- Nuestras fichas ya tienen instrucciones en español **escritas para baloncesto**, con errores frecuentes, contraindicaciones y regresión/progresión. Las de esta base son genéricas y descriptivas.
- Los ejercicios que sí coinciden son los que **ya tienen foto** de `free-exercise-db`.
- Los que nos faltan, no están.

**Valor marginal: bajo.** No se integra.

---

## 5. La vía legítima si quieres esas animaciones

Los GIF de Gym visual son buenos y son justo el formato que pedías. El camino correcto es:

1. Revisar sus términos: <https://gymvisual.com/content/3-terms-and-conditions-of-use>
2. **Obtener una licencia propia** directamente de Gym visual.
3. Con esa licencia, este repositorio se vuelve el índice perfecto: cada registro trae un `media_id` que mapea a su catálogo, más las instrucciones en diez idiomas bajo MIT.

Es decir: el repositorio es **una excelente hoja de ruta para comprar**, aunque no sea una fuente de la que servirse.

Y aun con esa licencia, seguirían faltando el CMJ, el aterrizaje, la almeja y la movilidad de tobillo. Para eso, la animación esquemática propia sigue siendo la única opción.

---

## 6. Lo que sí conviene copiar de este repositorio

No datos: **una práctica.** Separar la licencia del código de la de los medios, con un `NOTICE.md` explícito, es exactamente lo correcto y es poco común. Si algún día este proyecto incorpora material de terceros, se documenta así.
