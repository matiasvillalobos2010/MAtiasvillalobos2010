# Evidencia clínica: lesiones y prevención

> **Nivel de verificación de este archivo: `V2`.** Fuentes localizadas por buscador; **ninguna abierta directamente**. Ver [`00-metodologia-y-fuentes.md`](00-metodologia-y-fuentes.md) §1-2.

> ⚠️ Este archivo documenta epidemiología y prevención. **No es material de diagnóstico ni de tratamiento.** Las reglas que obligan al agente a frenar y derivar están en [`../02-agente/reglas-de-seguridad.md`](../02-agente/reglas-de-seguridad.md) y replicadas dentro del propio system prompt.

---

## 1. Panorama general

**`[EVIDENCIA]`** En una muestra multicéntrica de baloncesto universitario (853 deportistas): [Análisis epidemiológico multicéntrico de lesiones en jugadoras y jugadores universitarios de baloncesto](https://pmc.ncbi.nlm.nih.gov/articles/PMC12409725/) — PMC12409725.

| Localización / tipo | Proporción de lesiones | Tasa de incidencia (por 100 exposiciones) |
|---|---|---|
| Tobillo | 25,8 % | 0,075 |
| Rodilla | 15,5 % | 0,046 |
| Esguince ligamentoso (tipo más común) | — | 0,102 |

Dos revisiones sistemáticas con metaanálisis abordan la incidencia global y por mecanismo:

- [Stojanović et al., 2023 — *The incidence rate of ACL injuries and ankle sprains in basketball players: A systematic review and meta-analysis*, Scandinavian Journal of Medicine & Science in Sports](https://onlinelibrary.wiley.com/doi/10.1111/sms.14328) — DOI: 10.1111/sms.14328
- [*Injury Incidence Rate According to Mechanism, Body Location, and Type in Basketball Players: A Systematic Review and Meta-Analysis*, Sports Medicine, 2025](https://link.springer.com/article/10.1007/s40279-025-02334-y) — DOI: 10.1007/s40279-025-02334-y

**No se pudieron extraer las tasas concretas de ninguno de los dos metaanálisis.** Son las referencias de cabecera del tema y quien vaya a trabajar sobre esto debería abrirlas: es exactamente el punto donde la limitación `V2` más duele.

Para el contexto NBA específicamente: [*Epidemiology and injury trends in the National Basketball Association: Pre- and per-COVID-19 (2017–2021)*, PLOS One](https://journals.plos.org/plosone/article?id=10.1371%2Fjournal.pone.0263354) — DOI: 10.1371/journal.pone.0263354. Cifras no extraídas.

---

## 2. Esguince de tobillo

**`[EVIDENCIA]`** Es el diagnóstico más frecuente entre las lesiones de miembro inferior en baloncesto. En la cohorte universitaria citada, 336 de 853 deportistas (39,4 %) sufrieron esguince de tobillo, con un riesgo anual estimado del **18,9 % en mujeres y 20,2 % en hombres**. PMC12409725.

**`[EVIDENCIA]`** La tasa de recidiva alcanza el **60 %**, y la lesión inicial puede derivar en inestabilidad crónica, defectos condrales o tendinopatía peronea.

> ⚠️ **Atribución no confirmada.** Esta cifra apareció en el extracto de buscador asociada a un sitio divulgativo especializado, no a una fuente indexada identificable. Conforme a los criterios de [`00-metodologia-y-fuentes.md`](00-metodologia-y-fuentes.md) §4, **no se admite como respaldo firme**. Se consigna porque la magnitud del problema de recidiva es relevante para el diseño del agente, pero **debe verificarse antes de usarse profesionalmente**. Trátese como `sin evidencia sólida localizada` hasta comprobación.

**`[INFERENCIA]`** *(deriva de la alta frecuencia documentada y del problema de recidiva)* El historial de esguince previo debe ser un campo bloqueante del cuestionario inicial del agente: condiciona tanto la prescripción de trabajo de estabilidad como los criterios de derivación. Implementado en [`../02-agente/protocolo-de-evaluacion-inicial.md`](../02-agente/protocolo-de-evaluacion-inicial.md).

---

## 3. Tendinopatía rotuliana

**`[EVIDENCIA]`** En una cohorte de baloncesto juvenil, la prevalencia de temporada de tendinopatía rotuliana fue del **19,0 % global — 23,2 % en chicos y 12,5 % en chicas**. Factores de riesgo significativos: sexo masculino y **dolor anterior de rodilla previo**. [*The Burden and Risk Factors of Patellar and Achilles Tendinopathy in Youth Basketball: A Cohort Study*](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8470990/) — PMC8470990.

Sobre su impacto en rendimiento profesional: [*Impact of Patellar Tendinopathy on Player Performance in the National Basketball Association*](https://pmc.ncbi.nlm.nih.gov/articles/PMC8422823/) — PMC8422823. Cifras no extraídas.

**`[INFERENCIA]`** *(deriva del factor de riesgo "dolor anterior de rodilla previo")* El dolor anterior de rodilla, aunque el deportista lo considere menor y no le impida jugar, no es un dato descartable: es un predictor identificado. El cuestionario inicial debe recogerlo explícitamente en lugar de esperar a que el usuario lo reporte como "lesión".

**Sobre el tratamiento con trabajo excéntrico:** `sin evidencia sólida localizada` en las búsquedas realizadas. Existe un cuerpo de literatura conocido sobre carga excéntrica y de tendón en tendinopatía, pero **no se localizó ni verificó ninguna fuente concreta en este entorno**, y no se va a citar de memoria. El agente **no prescribe protocolos de tendinopatía**: deriva. Ver §7.

---

## 4. Lesión de LCA

### Magnitud del riesgo diferencial por sexo

**`[EVIDENCIA — con reserva sobre la magnitud]`** Las jugadoras presentan mayor riesgo de lesión de LCA que los jugadores. Las cifras recuperadas varían sustancialmente según la fuente: desde **2–3 veces** hasta **2–8 veces**.

> ⚠️ Los rangos anteriores proceden de comunicados institucionales divulgativos (centros médicos universitarios), **no de las fuentes indexadas localizadas**. El metaanálisis específico que cuantificaría esto — [Stojanović et al., 2023](https://onlinelibrary.wiley.com/doi/10.1111/sms.14328), DOI: 10.1111/sms.14328 — no pudo abrirse.
>
> **Lo que sí se puede afirmar con respaldo:** existe un riesgo diferencial documentado y reconocido. **Lo que no:** su magnitud exacta. La dispersión entre "2–3×" y "2–8×" es demasiado amplia para tomarla como dato. Úsese la dirección del efecto, no el número.

También disponible como marco general: [*The Incidence of Sport-Related Anterior Cruciate Ligament Injuries: An Overview of Systematic Reviews Including 51 Meta-Analyses*](https://pmc.ncbi.nlm.nih.gov/articles/PMC12101161/) — PMC12101161. Cifras no extraídas.

### Mecanismo lesional

**`[EVIDENCIA]`** Análisis sistemático por vídeo de lesiones de LCA en jugadoras profesionales de baloncesto: [Ternell KH, Tosarelli F, Buckthorpe M, Samuelsson K, Hamrin Senorski E, Della Villa F, 2025, *A Systematic Video Analysis of Anterior Cruciate Ligament Injuries in Professional Female Basketball Players*, American Journal of Sports Medicine](https://journals.sagepub.com/doi/10.1177/03635465251330007) — DOI: 10.1177/03635465251330007 | PMC12044211.

Hallazgos recuperados:

- Las lesiones se produjeron por **contacto indirecto o sin contacto**, en acciones de cambio de dirección ofensivas y defensivas, y en aterrizajes tras salto.
- Patrón biomecánico **multiplanar, dominante de rodilla, con valgo**.
- Se observaron **errores neurocognitivos en el 56 %** de las lesiones, y en el **92 % de las lesiones producidas en acciones defensivas**.

**El dato del 92 % es el más accionable de este archivo.** Si la mayoría de las lesiones defensivas de LCA implican un componente de error neurocognitivo — atención dividida, procesamiento de un estímulo externo inesperado — entonces el trabajo preventivo hecho exclusivamente con patrones cerrados y predecibles está entrenando una condición que no es la condición en la que ocurre la lesión.

**`[INFERENCIA]`** *(deriva del hallazgo anterior)* Esto respalda incorporar componente reactivo (estímulo externo, doble tarea, decisión bajo presión temporal) al trabajo preventivo, además del trabajo de mecánica de aterrizaje en patrón cerrado. **Precaución:** el estudio es descriptivo — documenta cómo ocurren las lesiones, no demuestra que entrenar el componente reactivo las reduzca. No hay, en las fuentes localizadas, evidencia de eficacia de esa intervención concreta. La inferencia es razonable pero no está probada.

### Factores contribuyentes

**`[EVIDENCIA — fuente no indexada]`** Los resultados de búsqueda atribuyen el riesgo diferencial a control neuromuscular, técnica de aterrizaje, diferencias anatómicas (tamaño de la escotadura intercondílea, área de sección transversal del LCA) y ratio de fuerza cuádriceps/isquiosurales.

> ⚠️ Estas explicaciones proceden de comunicados divulgativos de centros médicos, no de las fuentes indexadas localizadas. Se recogen como **hipótesis mecanísticas ampliamente asumidas**, no como hallazgo verificado. Existe literatura indexada localizada sobre factores anatómicos por sexo — [Comparación por RMN del mecanismo lesional y factores anatómicos entre sexos en lesiones de LCA sin contacto](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6675514/) — PMC6675514 — cuyos datos no se pudieron extraer.

Revisión sobre prevención específica en la deportista: [*ACL Injury prevention in female athletes: review of the literature and practical considerations in implementing an ACL prevention program*](https://pmc.ncbi.nlm.nih.gov/articles/PMC3702781/) — PMC3702781.

---

## 5. Lumbalgia

**`sin evidencia sólida localizada`** para baloncesto específicamente, en las búsquedas realizadas. No se citará nada al respecto.

Es un vacío relevante: la lumbalgia figuraba explícitamente en el encargo. Queda como una de las limitaciones declaradas del proyecto.

---

## 6. Programas neuromusculares de prevención

### Qué dice la evidencia específica de baloncesto

**`[EVIDENCIA — débil]`** [*The Effectiveness of Neuromuscular Warmups for Lower Extremity Injury Prevention in Basketball: A Systematic Review*](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8446130/) — PMC8446130:

- Efecto protector significativo para lesiones de tobillo en **4 de 9 estudios** evaluados.
- Efecto protector significativo para LCA en **2 de 4 estudios**.
- Valoración global: la evidencia **apoya** el uso de calentamientos neuromusculares para prevención de lesión de miembro inferior en baloncesto.
- **Limitaciones declaradas por los propios autores:** la mayoría de estudios están infrapotenciados, algunos usan diseños de menor calidad, y las definiciones de exposición y desenlace varían. **No fue posible realizar metaanálisis por heterogeneidad.**

**Esto es evidencia favorable pero frágil, y así debe presentarse.** "4 de 9" y "2 de 4" no es un efecto robusto; es una señal consistente en dirección, con base metodológica limitada.

**`[EVIDENCIA]`** En el conjunto de deportes, la proporción de estudios que muestran reducción significativa de esguinces de tobillo varía **del 50 % en baloncesto al 100 % en voleibol**. [Metaanálisis sobre entrenamiento neuromuscular y prevención de esguince de tobillo](https://www.sciencedirect.com/science/article/pii/S2059775421001644).

### Evidencia general (otros deportes y población juvenil)

**`[EVIDENCIA]`** Efecto preventivo combinado del entrenamiento neuromuscular sobre riesgo de lesión de miembro inferior: **razón de tasas de incidencia (IRR) de 0,64**. [*Neuromuscular training injury prevention strategies in youth sport: a systematic review and meta-analysis*](https://pubmed.ncbi.nlm.nih.gov/26084526/) — PMID: 26084526.

**`[EVIDENCIA]`** **La frecuencia importa.** Los programas aplicados **2 o 3 veces por semana** produjeron una reducción de riesgo sustancialmente mayor que los aplicados una vez por semana. [*Dose-Response Relationship of Neuromuscular Training for Injury Prevention in Youth Athletes: A Meta-Analysis*, Frontiers in Physiology](https://www.frontiersin.org/journals/physiology/articles/10.3389/fphys.2017.00920/full) — DOI: 10.3389/fphys.2017.00920.

Este es el hallazgo con mayor consecuencia práctica del apartado: **un programa preventivo aplicado una vez por semana es una decisión de dosificación insuficiente, no una versión reducida igualmente válida.**

Sobre el FIFA 11+ concretamente, la evidencia localizada es en **fútbol**, no en baloncesto: [*The Impact of the FIFA 11+ Neuromuscular Training Programme on Ankle Injury Reduction in Football Players: A Systematic Review and Meta-Analysis*](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC12371935/) — PMC12371935.

**`[INFERENCIA]`** El encargo mencionaba "programas tipo FIFA 11+ adaptados" al baloncesto. La evidencia de eficacia del 11+ está en fútbol; su adaptación al baloncesto es una **práctica extendida cuya eficacia específica no está demostrada en las fuentes localizadas**. Lo que sí tiene respaldo en baloncesto es el principio general del calentamiento neuromuscular (PMC8446130), no un protocolo concreto trasplantado.

### Protocolos de isquiosurales / trabajo excéntrico

**`sin evidencia sólida localizada`** en población de baloncesto. La evidencia sobre protocolos nórdicos de isquiosurales procede mayoritariamente de fútbol y no se localizó ni verificó en este entorno.

**`[INFERENCIA]`** Dado el perfil de desaceleraciones documentado en [`01-fisiologia-y-demandas-del-baloncesto.md`](01-fisiologia-y-demandas-del-baloncesto.md) §2, el trabajo excéntrico de isquiosurales es defendible por analogía de demanda. Pero **es analogía, no evidencia en baloncesto**, y así debe etiquetarse si el agente lo prescribe.

---

## 7. Poblaciones especiales

### Deportista juvenil en crecimiento

**`[EVIDENCIA]`** El riesgo de lesión, en particular de miembro inferior, **alcanza su pico en torno al estirón de crecimiento adolescente**. Durante ese periodo hay tasas de crecimiento desiguales entre tejidos: el hueso crece antes y más rápido que músculo y tendón, que van por detrás. [NSCA Position Statement on Long-Term Athletic Development](https://www.nsca.com/globalassets/about/position-statements/nsca_position_statement_long-term_athletic_development.pdf) — DOI: 10.1519/JSC.0000000000001387.

**`[EVIDENCIA]`** Un programa de fuerza correctamente diseñado y supervisado es **relativamente seguro** en jóvenes, puede mejorar fuerza y potencia, y puede aumentar la resistencia del joven deportista a lesiones deportivas. [NSCA Youth Resistance Training: Updated Position Statement](https://doi.org/10.1519/jsc.0b013e31819df407) — DOI: 10.1519/JSC.0b013e31819df407.

Las dos palabras que sostienen esa afirmación son **"diseñado" y "supervisado"**. Sin ellas, la conclusión no se aplica. De ahí que el agente exija supervisión para menores.

**`[EVIDENCIA]`** Por la variabilidad interindividual en tolerancia al estrés, **cada niño debe tratarse como un individuo** y observarse ante signos de síndromes de fallo por estrés, muchos de los cuales son prevenibles con la debida atención. NSCA LTAD.

**`[EVIDENCIA]`** La respuesta al entrenamiento varía con el estado madurativo: los chicos que **no habían alcanzado** el pico de velocidad de crecimiento (PHV, *peak height velocity*) mejoraron más en velocidad tras entrenamiento pliométrico, mientras que los que **ya lo habían alcanzado** respondieron mejor a entrenamiento combinado de fuerza y pliometría. NSCA LTAD. Ver también [*The Effect of Peak Height Velocity on Strength and Power Development of Young Athletes: A Scoping Review*](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC12101259/) — PMC12101259.

### La jugadora

Ver §4. Riesgo diferencial de LCA documentado en dirección, con magnitud no verificada.

### Amateur vs. profesional

Ver [`01-fisiologia-y-demandas-del-baloncesto.md`](01-fisiologia-y-demandas-del-baloncesto.md) §8. `sin evidencia sólida localizada` en magnitudes.

---

## 8. Qué se traslada al agente

Trazabilidad directa desde este archivo a las reglas operativas:

| Hallazgo | Consecuencia en el agente | Archivo destino |
|---|---|---|
| Programas neuromusculares: 2-3×/semana >> 1×/semana | Frecuencia mínima del bloque preventivo | [`../02-agente/SYSTEM-PROMPT.md`](../02-agente/SYSTEM-PROMPT.md) |
| Esguince de tobillo, frecuencia y recidiva | Historial de tobillo como campo bloqueante | [`../02-agente/protocolo-de-evaluacion-inicial.md`](../02-agente/protocolo-de-evaluacion-inicial.md) |
| Dolor anterior de rodilla como factor de riesgo | Pregunta explícita, no esperar reporte espontáneo | [`../02-agente/protocolo-de-evaluacion-inicial.md`](../02-agente/protocolo-de-evaluacion-inicial.md) |
| 92 % de LCA defensivas con error neurocognitivo | Componente reactivo en trabajo preventivo, etiquetado como inferencia | [`../03-datos/biblioteca-ejercicios.md`](../03-datos/biblioteca-ejercicios.md) |
| Pico de riesgo en el estirón; supervisión necesaria | Bloqueo y derivación para menores sin supervisión | [`../02-agente/reglas-de-seguridad.md`](../02-agente/reglas-de-seguridad.md) |
| Tendinopatía: sin protocolo verificado localizado | El agente **no** prescribe tratamiento de tendinopatía; deriva | [`../02-agente/reglas-de-seguridad.md`](../02-agente/reglas-de-seguridad.md) |

---

## Fuentes citadas en este archivo

Todas `V2`. Ver [`99-bibliografia.md`](99-bibliografia.md).

1. Análisis epidemiológico multicéntrico universitario — PMC12409725
2. Stojanović et al., 2023, Scand J Med Sci Sports — DOI: 10.1111/sms.14328
3. Incidencia por mecanismo/localización/tipo, Sports Medicine 2025 — DOI: 10.1007/s40279-025-02334-y
4. Epidemiología NBA, PLOS One — DOI: 10.1371/journal.pone.0263354
5. Tendinopatía rotuliana y aquílea en baloncesto juvenil — PMC8470990
6. Tendinopatía rotuliana y rendimiento en NBA — PMC8422823
7. Ternell et al., 2025, AJSM — DOI: 10.1177/03635465251330007 | PMC12044211
8. Overview de revisiones sistemáticas sobre incidencia de LCA — PMC12101161
9. Comparación por RMN de factores anatómicos por sexo — PMC6675514
10. Prevención de LCA en la deportista — PMC3702781
11. Calentamientos neuromusculares en baloncesto — PMC8446130
12. Entrenamiento neuromuscular y esguince de tobillo — ScienceDirect S2059775421001644
13. Prevención neuromuscular en deporte juvenil — PMID: 26084526
14. Dosis-respuesta de entrenamiento neuromuscular — DOI: 10.3389/fphys.2017.00920
15. FIFA 11+ y lesión de tobillo en fútbol — PMC12371935
16. NSCA Position Statement on Long-Term Athletic Development — DOI: 10.1519/JSC.0000000000001387
17. NSCA Youth Resistance Training Position Statement — DOI: 10.1519/JSC.0b013e31819df407
18. PHV y desarrollo de fuerza y potencia — PMC12101259
