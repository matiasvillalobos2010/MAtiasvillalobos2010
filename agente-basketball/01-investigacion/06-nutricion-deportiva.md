# Nutrición deportiva aplicada al baloncesto

> **Nivel de verificación de este archivo: `V2`.** Fuentes localizadas por buscador; **ninguna abierta directamente**. Ver [`00-metodologia-y-fuentes.md`](00-metodologia-y-fuentes.md) §1-2.

> ⚠️ Este archivo documenta requerimientos nutricionales en población deportiva sana. **No es material clínico.** Las condiciones que obligan al agente a frenar y derivar — sospecha de REDs, conducta alimentaria de riesgo, patología diagnosticada — están en [`../02-agente/reglas-de-seguridad.md`](../02-agente/reglas-de-seguridad.md).

Su traducción operativa en fórmulas calculables está en [`../03-datos/tablas-nutricionales.md`](../03-datos/tablas-nutricionales.md).

---

## 1. Nota sobre conflicto de interés en las fuentes

Buena parte del material divulgativo de mayor calidad aparente sobre nutrición en baloncesto procede de institutos de investigación **financiados por fabricantes de bebidas deportivas**. Sus contenidos aparecen recurrentemente en los primeros resultados de búsqueda.

Conforme a [`00-metodologia-y-fuentes.md`](00-metodologia-y-fuentes.md) §4, **no se admiten como respaldo de ninguna afirmación de este proyecto**. Cuando una cifra solo pudo localizarse en ese tipo de fuente, se marca explícitamente y **no se traslada a las fórmulas del agente**.

Esto elimina varias cifras atractivas y concretas. Es el precio de la regla.

---

## 2. Requerimientos energéticos

### Lo documentado

**`[EVIDENCIA]`** Para deportistas con niveles moderados de entrenamiento —como jugadores de baloncesto de élite que entrenan **2-3 h/día, 5-6 veces por semana**— la ingesta recomendada se sitúa en **50-80 kcal·kg⁻¹·día⁻¹**, con **1,6-1,8 g·kg⁻¹·día⁻¹ de proteína**. [Adecuación de las ingestas de nutrientes en jugadores júnior de élite de baloncesto](https://pubmed.ncbi.nlm.nih.gov/24667205/) — PMID: 24667205.

> ⚠️ **Atribución probable, no confirmada.** La cifra apareció en el extracto asociada al contexto de ese estudio, pero no se pudo abrir para confirmarlo. El rango 50-80 kcal/kg es además muy amplio: para un jugador de 90 kg va de 4.500 a 7.200 kcal/día. **No es utilizable como prescripción sin individualizar.**

### Lo observado en la práctica: el déficit es la norma

**`[EVIDENCIA]`** Los jugadores júnior de élite ingieren aproximadamente **700 kcal más** que los no deportistas, pero **el 56 % consume menos de 6 g/kg de carbohidrato**. PMID: 24667205.

**`[EVIDENCIA]`** En jugadores universitarios masculinos de la NCAA División I, la ingesta de energía, proteína y carbohidrato fue **inadecuada respecto a las recomendaciones** durante el periodo basal. [Evaluación de la adecuación de nutrientes y efecto del entrenamiento de temporada completa sobre composición corporal y tasa metabólica en jugadores universitarios masculinos de baloncesto](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9506544/) — PMC9506544.

**Este es el hallazgo más relevante del capítulo para el diseño del agente.** El problema documentado en baloncesto no es el exceso: es la **subalimentación**, particularmente de carbohidrato. Un agente que por defecto sugiera restricción calórica estaría empujando en la dirección equivocada respecto a lo que la evidencia observa en esta población. De ahí la prohibición explícita de restricciones agresivas en las reglas de seguridad.

### Gasto energético

**`sin evidencia sólida localizada`** admisible. Se recuperaron cifras de gasto en jugadores de élite de edad escolar (superior a 3.500 kcal/día en mujeres y a 4.600 kcal/día en hombres), **pero únicamente desde una fuente con conflicto de interés comercial**. No se admiten y no se trasladan a las fórmulas.

---

## 3. Macronutrientes

### Carbohidrato

**`[EVIDENCIA]`** Rango sugerido para jugadores de baloncesto: **5-7 g/kg de peso corporal, y hasta 10 g/kg**; con al menos el 55 % de las calorías totales procedentes de carbohidrato.

> ⚠️ Atribución ambigua entre las fuentes recuperadas (PMID 24667205 y material divulgativo). El rango es coherente con las recomendaciones generales de consenso citadas abajo, lo que le da plausibilidad, pero **la atribución exacta no está confirmada**.

**`[EVIDENCIA]`** En consensos y position stands de grupos internacionales de expertos, las recomendaciones diarias de carbohidrato se sitúan en **3-10 g/kg de masa corporal**, con indicación general de **periodizar o adaptar la ingesta** según el tipo de deporte y las demandas de entrenamiento. [Recomendaciones dietéticas para la manipulación de masa y composición corporal en deportistas: revisión scoping de consensos, position stands y guías de práctica de grupos internacionales de expertos](https://pmc.ncbi.nlm.nih.gov/articles/PMC12513969/) — PMC12513969.

### Proteína

Tres rangos localizados, de tres fuentes distintas:

| Rango | Contexto | Fuente |
|---|---|---|
| **1,4-1,7 g/kg/día** | Específico de baloncesto | Atribución ambigua (ver aviso abajo) |
| **1,6-1,8 g/kg/día** | Baloncesto de élite, 2-3 h/día | PMID: 24667205 |
| **1,4-2,0 g/kg/día** | Suficiente para la mayoría de personas que entrenan, para ganar o mantener masa muscular | [ISSN Position Stand: protein and exercise](https://pubmed.ncbi.nlm.nih.gov/28642676/) — PMID: 28642676 \| PMC5477153 |
| **1,6-2,4 g/kg/día** | Consensos internacionales, repartido en **4-6 tomas** de fuentes de alta calidad | PMC12513969 |

**`[INFERENCIA]`** Los rangos se solapan sustancialmente entre 1,6 y 1,8 g/kg/día. Ese solapamiento es la zona defendible por convergencia de fuentes, y es la que se traslada como banda central a [`../03-datos/tablas-nutricionales.md`](../03-datos/tablas-nutricionales.md). La convergencia es una lectura propia, no una recomendación conjunta de los autores.

**`[EVIDENCIA]`** El reparto en **4-6 tomas** figura explícitamente en la revisión de consensos. PMC12513969.

### Grasa

**`sin evidencia sólida localizada`** en las búsquedas realizadas, para población de baloncesto ni en términos generales.

**`[INFERENCIA]`** En ausencia de recomendación localizada, la grasa se calcula como **remanente** tras cubrir carbohidrato y proteína, con un suelo mínimo por debajo del cual no se debe bajar. Ese suelo **no tiene respaldo verificado en este proyecto**; se fija por prudencia y se declara como inferencia en las tablas.

---

## 4. Hidratación y electrolitos

**`[EVIDENCIA]`** Las concentraciones de sodio en sudor fueron significativamente **más altas en baloncesto (48,3 ± 14,0 mmol·L⁻¹)** que en fútbol o rugby. [Datos normativos de concentraciones regionales de sodio en sudor en deportistas profesionales masculinos de deportes de equipo](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5661918/) — PMC5661918.

Es el dato de hidratación con mejor respaldo del capítulo, y es específico de baloncesto: esta población pierde más sodio por litro de sudor que otras poblaciones de deportes de equipo.

**`[EVIDENCIA — atribución no confirmada]`** Otras cifras recuperadas:

- Beber lo suficiente para **evitar un déficit ≥2 % del peso corporal** durante una sesión o partido.
- Para ejercicio de más de 1 h, consumir **20-30 mmol·L⁻¹** de sodio.
- Punto de partida de al menos **~500 ml de líquido por hora**.
- Mejor balance hídrico con bebidas saborizadas (soluciones de carbohidrato-electrolito al 1 % y 6,8 %) que con agua, en jugadores júnior de élite de netball y baloncesto.

> ⚠️ Estas cuatro cifras se recuperaron mayoritariamente desde **fuentes con conflicto de interés comercial** (institutos financiados por fabricantes de bebidas deportivas). La última — superioridad de bebidas saborizadas con carbohidrato frente al agua — es precisamente el tipo de afirmación donde ese conflicto es más relevante.
>
> **Ninguna se traslada como prescripción a las fórmulas del agente.** El agente puede recomendar el principio general de reponer líquido y sodio, y el método de pesarse antes y después para estimar pérdidas, sin adoptar estos números concretos.

---

## 5. Timing nutricional

**`sin evidencia sólida localizada`** en las búsquedas realizadas, para baloncesto específicamente, en:

- Pauta pre-partido
- Ingesta intra-partido
- Ventana de recuperación
- Días dobles

Es un vacío importante: era uno de los cinco bloques explícitos del encargo. Lo único adyacente localizado con respaldo es el reparto proteico en 4-6 tomas diarias (PMC12513969, §3) y el momento de toma de cafeína (§6).

**`[INFERENCIA]`** El agente puede aplicar el principio de distribución proteica documentado, pero **no debe emitir pautas horarias detalladas de pre/intra/post partido** presentándolas como respaldadas. No lo están en este proyecto.

---

## 6. Suplementación

### Clasificación por evidencia

**`[EVIDENCIA]`** Los suplementos ergogénicos **establecidos** para rendimiento deportivo son: **cafeína, creatina, nitrato y beta-alanina**. Es la categoría de mayor respaldo. Recuperado del corpus de position stands de la ISSN (ver referencias por sustancia abajo).

### Creatina

**`[EVIDENCIA]`** Es uno de los ayudas ergogénicas nutricionales más populares. Los estudios muestran de forma consistente que la suplementación **aumenta las concentraciones intramusculares de creatina** y puede mejorar el rendimiento en ejercicio y/o las adaptaciones al entrenamiento. La suplementación a corto y largo plazo (**hasta 30 g/día durante 5 años**) es **segura y bien tolerada** en individuos sanos y en diversas poblaciones de pacientes, desde lactantes hasta ancianos. [ISSN Position Stand: safety and efficacy of creatine supplementation in exercise, sport, and medicine](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5469049/) — DOI: 10.1186/s12970-017-0173-z | PMC5469049.

### Cafeína

**`[EVIDENCIA]`** El valor ergogénico de la cafeína sobre el rendimiento mental y físico está **bien establecido**. El consumo **10-60 minutos antes** del ejercicio puede mejorar el foco mental, el estado de alerta, y el rendimiento anaeróbico y/o de resistencia. [ISSN Position Stand: energy drinks](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3538552/) — PMC3538552.

> Nota: la fuente localizada es el position stand sobre **bebidas energéticas**, no el específico de cafeína. La afirmación sobre cafeína procede de ese documento.

### Beta-alanina

**`[EVIDENCIA]`** La suplementación diaria con **4-6 g durante al menos 2-4 semanas** mejora el rendimiento, con efectos **más pronunciados en tareas de 1 a 4 minutos** de duración. Parece segura en poblaciones sanas a las dosis recomendadas, con la **parestesia (hormigueo)** como único efecto adverso reportado. [ISSN Position Stand: Beta-Alanine](https://link.springer.com/article/10.1186/s12970-015-0090-y) — DOI: 10.1186/s12970-015-0090-y.

**`[INFERENCIA]`** La ventana de eficacia documentada (esfuerzos de 1-4 min) **no coincide bien con el patrón de esfuerzo del baloncesto** descrito en [`01-fisiologia-y-demandas-del-baloncesto.md`](01-fisiologia-y-demandas-del-baloncesto.md): acciones explosivas cortas sobre fondo de baja intensidad, con pausas frecuentes. La transferencia al baloncesto no está demostrada en las fuentes localizadas. Es un ejemplo de suplemento con buena evidencia **en un contexto que no es este**.

### Nitratos

Aparecen en la lista de ergogénicos establecidos, pero **`sin evidencia sólida localizada`** en cuanto a dosis, protocolo o aplicación al baloncesto. No se pudo recuperar el position stand correspondiente.

### Vitamina D

**`[EVIDENCIA]`** Entre participantes del **NBA Combine**: deficiencia de vitamina D (<20 ng/mL) en el **32,3 %**, insuficiencia (20-30 ng/mL) en el **41,2 %**, y niveles suficientes (>30 ng/mL) en solo el **26,5 %**. [Insuficiencia de vitamina D en jugadores profesionales de baloncesto: relación con riesgo de fractura y rendimiento atlético](https://pmc.ncbi.nlm.nih.gov/articles/PMC5964858/) — PMC5964858; [Deficiencia de vitamina D entre jugadores profesionales de baloncesto](https://pubmed.ncbi.nlm.nih.gov/27482529/) — PMID: 27482529.

Casi tres de cada cuatro jugadores evaluados presentaban niveles inadecuados.

**`[EVIDENCIA]`** Factores de riesgo: el baloncesto es un deporte **predominantemente de interior** con escasa actividad al aire libre; y la **pigmentación oscura de la piel** correlacionó significativamente con niveles más bajos. [El estado de vitamina D difiere por sexo, momento de temporada y pigmentación cutánea en jugadores universitarios de élite](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6915602/) — PMC6915602.

**`[EVIDENCIA]`** La alta proporción de inadecuación **subraya la necesidad de cribado de 25(OH)D sérica** en jugadores de baloncesto. **Sin embargo, aunque la suplementación restauró la suficiencia, los efectos beneficiosos sobre salud ósea y rendimiento físico siguen siendo escasos.** Ver también [Vitamina D en jugadores de baloncesto: evidencia actual y direcciones futuras](https://pubmed.ncbi.nlm.nih.gov/34085865/) — PMID: 34085865; [Asociación del estado de vitamina D con la fuerza de miembro inferior en jugadores profesionales](https://doi.org/10.3390/nu12092715) — DOI: 10.3390/nu12092715.

**Este matiz es esencial y suele omitirse:** el déficit está bien documentado; el beneficio de corregirlo, no tanto. La conclusión operativa correcta es **derivar para analítica**, no prescribir un suplemento.

**`[EVIDENCIA]`** Prevalencia y factores de riesgo en deportistas de élite en general: [Prevalencia y nuevos factores de riesgo de insuficiencia de vitamina D en deportistas de élite: revisión sistemática y metaanálisis, European Journal of Nutrition](https://link.springer.com/article/10.1007/s00394-022-02967-z) — DOI: 10.1007/s00394-022-02967-z. Cifras no extraídas.

### Estatus regulatorio AMA/WADA

**`sin evidencia sólida localizada`**. No se consultó la Lista de Sustancias y Métodos Prohibidos de la AMA/WADA — el dominio no era accesible desde este entorno.

**Consecuencia operativa, y es importante:** este proyecto **no puede certificar el estatus regulatorio de ninguna sustancia**. El agente no debe afirmar que un suplemento "está permitido". Debe remitir a la lista oficial vigente y advertir del riesgo de contaminación de suplementos. Trasladado a [`../02-agente/reglas-de-seguridad.md`](../02-agente/reglas-de-seguridad.md).

---

## 7. REDs — déficit energético relativo en el deporte

**REDs** (*Relative Energy Deficiency in Sport*): síndrome de consecuencias adversas para la salud y el rendimiento derivadas de baja disponibilidad energética (**LEA**, *low energy availability*: ingesta energética insuficiente en relación con el gasto energético del ejercicio).

**`[EVIDENCIA]`** Introducido en 2014 por un panel de expertos del COI, afecta a deportistas de ambos sexos. La actualización de 2023 se publicó en el *British Journal of Sports Medicine*. [2023 IOC consensus statement on Relative Energy Deficiency in Sport (REDs), Mountjoy M, Ackerman KE, et al.](https://www.semanticscholar.org/paper/2023-International-Olympic-Committee%E2%80%99s-(IOC)-on-in-Mountjoy-Ackerman/31232e7d9d1bcf590e29b10e8d80337a8a6b6616).

**`[EVIDENCIA]`** Novedades de la actualización de 2023:
- Más de **170 publicaciones originales** desde el consenso de 2018.
- Papel creciente de la **baja disponibilidad de carbohidrato**.
- Más evidencia sobre la interacción entre **salud mental** y REDs.
- Más datos sobre el impacto de la LEA **en varones**.
- Modelos conceptuales de Salud y Rendimiento actualizados, y un nuevo Modelo Fisiológico.
- La LEA existe **en un espectro que va de adaptable a problemática**.
- Cambio de acrónimo: RED-S → REDs.

**`[EVIDENCIA]`** Existe debate en la literatura sobre la propia entidad del síndrome: [¿Existe el síndrome de Deficiencia Energética Relativa en el Deporte (REDs)?](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC11561064/) — PMID: 39287777 | PMC11561064. Contenido no extraído.

Se consigna la existencia de esa crítica por el mismo motivo por el que se recogió la crítica al ACWR: presentar un marco conceptual como consolidado sin mencionar su discusión sería un fallo de rigor. **Esto no debilita la regla de seguridad**: ante señales de baja disponibilidad energética el agente deriva, independientemente de cómo se resuelva el debate nosológico.

**`[INFERENCIA]`** La combinación de dos hallazgos de este archivo — subalimentación documentada como norma en baloncesto (§2) y LEA en espectro con consecuencias sobre salud (§7) — es la justificación directa de la prohibición de restricciones calóricas agresivas en las reglas del agente.

---

## 8. Poblaciones y contextos específicos

### Jugadora

Referencia localizada: [Consideraciones nutricionales para la salud y el rendimiento en jugadoras de baloncesto: revisión narrativa, Journal of Physical Fitness and Sports Medicine 12(5):119](https://www.jstage.jst.go.jp/article/jpfsm/12/5/12_119/_article). **Contenido no extraído.**

Es un vacío relevante dado que la revisión existe y es específica de la población.

### Contexto real: presupuesto, vegetarianismo, alergias, viajes

**`sin evidencia sólida localizada`** para ninguno de los cuatro contextos que pedía el encargo, en población deportiva de baloncesto.

**`[INFERENCIA]`** Estas adaptaciones pueden abordarse por sustitución de fuentes alimentarias manteniendo los objetivos de macronutrientes calculados, que es el principio operativo aplicable. Pero se trata de **razonamiento de aplicación, no de evidencia**, y así debe presentarlo el agente. En particular, la adaptación de una dieta vegana para cubrir requerimientos proteicos en un deportista de alto peso corporal **no es trivial** y es un caso donde la derivación a un dietista-nutricionista deportivo es lo correcto.

---

## 9. Qué se traslada al agente

| Hallazgo | Consecuencia | Etiqueta |
|---|---|---|
| Subalimentación documentada como norma en baloncesto | **Nunca** proponer restricción calórica por defecto | `[EVIDENCIA]` |
| Convergencia proteica en 1,6-1,8 g/kg/día | Banda central de cálculo | `[INFERENCIA]` sobre `[EVIDENCIA]` |
| CHO 5-7 g/kg (hasta 10), consensos 3-10 g/kg | Rango de cálculo, periodizado por fase | `[EVIDENCIA]` |
| Proteína repartida en 4-6 tomas | Estructura de distribución diaria | `[EVIDENCIA]` |
| Sodio en sudor más alto en baloncesto que en otros deportes de equipo | Atención específica a reposición de sodio | `[EVIDENCIA]` |
| ~74 % de inadecuación de vitamina D en jugadores evaluados | **Derivar para analítica**, no prescribir suplemento | `[EVIDENCIA]` |
| Beneficio de corregir vitamina D poco establecido | No prometer efectos sobre rendimiento | `[EVIDENCIA]` |
| Beta-alanina eficaz en esfuerzos de 1-4 min | No recomendarla como ergogénico de baloncesto | `[INFERENCIA]` |
| Estatus WADA no verificable en este entorno | El agente **no certifica** que nada esté permitido; remite a la lista oficial | `[INFERENCIA]` |
| REDs: LEA en espectro, con impacto en ambos sexos | Regla de derivación activa ante señales | `[EVIDENCIA]` |
| Timing pre/intra/post sin evidencia localizada | No emitir pautas horarias como respaldadas | `[INFERENCIA]` |

---

## 10. Vacíos declarados

1. **Timing nutricional completo** (pre, intra, recuperación, días dobles) — §5. Bloque entero del encargo sin cubrir.
2. **Requerimientos por posición** — no se localizó ninguna fuente que diferencie requerimientos por posición de juego. Ver [`../03-datos/tablas-nutricionales.md`](../03-datos/tablas-nutricionales.md) §2 para cómo se resuelve esto sin inventar coeficientes.
3. **Requerimientos por fase de temporada** — no se localizaron cifras específicas por pretemporada / temporada / playoffs / off-season.
4. **Estatus regulatorio AMA/WADA** — no verificable desde este entorno. §6.
5. **Grasa** — sin recomendación localizada. §3.
6. **Adaptaciones de contexto real** — §8.
7. **Nutrición de la jugadora** — revisión localizada, contenido no extraído. §8.

Siete vacíos sobre cinco bloques pedidos. **Es el capítulo con peor cobertura del proyecto**, y conviene que el lector lo sepa antes de confiar en las tablas derivadas.

---

## Fuentes citadas en este archivo

Todas `V2`. Ver [`99-bibliografia.md`](99-bibliografia.md).

1. Adecuación de ingestas en júnior de élite de baloncesto — PMID: 24667205
2. Adecuación de nutrientes y temporada en universitarios masculinos — PMC9506544
3. Revisión scoping de consensos sobre recomendaciones dietéticas — PMC12513969
4. ISSN Position Stand: protein and exercise — PMID: 28642676 | PMC5477153
5. IOC Consensus Statement on Sports Nutrition 2010 — stillmed.olympic.org
6. ISSN Position Stand: creatina — DOI: 10.1186/s12970-017-0173-z | PMC5469049
7. ISSN Position Stand: beta-alanina — DOI: 10.1186/s12970-015-0090-y
8. ISSN Position Stand: bebidas energéticas — PMC3538552
9. Sodio en sudor en deportistas de deportes de equipo — PMC5661918
10. Insuficiencia de vitamina D en profesionales de baloncesto — PMC5964858 | PMID: 27482529
11. Vitamina D por sexo, temporada y pigmentación en universitarios — PMC6915602
12. Vitamina D en baloncesto: evidencia y direcciones futuras — PMID: 34085865
13. Vitamina D y fuerza de miembro inferior — DOI: 10.3390/nu12092715
14. Insuficiencia de vitamina D en élite: revisión y metaanálisis — DOI: 10.1007/s00394-022-02967-z
15. IOC consensus statement on REDs, 2023 — Mountjoy, Ackerman et al., BJSM
16. ¿Existe el síndrome REDs? — PMID: 39287777 | PMC11561064
17. Nutrición en jugadoras de baloncesto: revisión narrativa — JPFSM 12(5):119
