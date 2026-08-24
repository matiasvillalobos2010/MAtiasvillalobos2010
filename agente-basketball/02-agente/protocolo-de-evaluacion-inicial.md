# Protocolo de evaluación inicial

Cuestionario que el agente aplica **antes de generar nada**.

**Regla central:** sin respuesta a los campos bloqueantes, no hay plan. El agente no rellena huecos con supuestos ni ofrece un "plan genérico mientras tanto" — esa es la vía por la que acaba prescribiendo material que el deportista no tiene o carga que no debería.

---

## 1. Bloques del cuestionario

### Bloque A — Identificación *(bloqueante)*

| # | Campo | Por qué se pregunta |
|---|---|---|
| A1 | **Edad** | Activa B4/P5 (menores). Determina consideración de PHV |
| A2 | **Sexo** | Riesgo diferencial de LCA documentado; requerimientos nutricionales |
| A3 | **Peso corporal (kg)** | **Variable sobre la que se calcula todo el plan nutricional** |
| A4 | **Posición** (base / alero / pívot) | Perfil de demanda: horizontal vs. impacto vertical (`P6`) |
| A5 | **Nivel** (amateur / federado / semiprofesional / profesional) | Contexto de carga |
| A6 | **Años de práctica** | Experiencia acumulada |
| A7 | **Experiencia en entrenamiento de fuerza** (ninguna / <1 año / 1-3 / >3) | Activa P4: sin experiencia, no se prescriben levantamientos con barra |

> **A7 no es opcional.** Es lo que impide que el agente prescriba una sentadilla con barra a alguien que tiene rack disponible y nunca ha cargado una barra. El material disponible y la competencia para usarlo son cosas distintas ([`../03-datos/catalogo-implementos.md`](../03-datos/catalogo-implementos.md) §8).

### Bloque B — Estado de salud *(bloqueante — activa reglas de seguridad)*

| # | Pregunta | Activa |
|---|---|---|
| B1 | ¿Tienes **dolor agudo** ahora, en reposo o al moverte? | B1 → parada total |
| B2 | ¿Tienes alguna **lesión activa** o estás recuperándote de una sin alta deportiva? | B2 → parada total |
| B3 | ¿Tienes alguna **patología diagnosticada**? | B3 → parada total |
| B4 | ¿Has tenido **esguinces de tobillo**? ¿Cuántos? | P1 → bloque preventivo obligatorio |
| B5 | ¿Tienes o has tenido **dolor en la parte anterior de la rodilla**, aunque no te impida jugar? | P2 → precaución pliométrica |
| B6 | ¿Has tenido **lesión de LCA**? ¿Tienes alta deportiva? | P3 / B2 |
| B7 | ¿Has tenido **lumbalgia** o dolor lumbar recurrente? | Precaución |
| B8 | Si eres menor: ¿entrenas **con supervisión** de un adulto con criterio? | B4 → parada total si no |

> **B5 está formulada así a propósito.** Preguntar "¿tienes alguna lesión?" no captura el dolor anterior de rodilla, porque el deportista no lo considera lesión si le deja jugar. Y es un **factor de riesgo significativo** de tendinopatía rotuliana — [PMC8470990](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8470990/). Hay que preguntarlo explícitamente o no aparece.

### Bloque C — Disponibilidad *(bloqueante)*

| # | Campo |
|---|---|
| C1 | **Días por semana** que puedes entrenar |
| C2 | **Minutos por sesión** |
| C3 | ¿Entrenas también con equipo? ¿Cuántas sesiones y partidos por semana? |

**`[EVIDENCIA]`** C1 tiene consecuencia inmediata: el bloque preventivo neuromuscular requiere **2-3 sesiones semanales** para el efecto documentado; una sola sesión semanal produce una reducción de riesgo sustancialmente menor. [Frontiers in Physiology, DOI: 10.3389/fphys.2017.00920](https://www.frontiersin.org/journals/physiology/articles/10.3389/fphys.2017.00920/full).

Si el deportista declara **1 día por semana**, el agente debe decirle explícitamente que el bloque preventivo estará infradosificado. No callarlo y repartir el contenido como si diera igual.

C3 importa porque el volumen total incluye lo que hace con su equipo, no solo lo que el agente prescribe.

### Bloque D — Contexto *(bloqueante)*

| # | Campo | Opciones |
|---|---|---|
| D1 | **Objetivo** | Fuerza · potencia/salto · acondicionamiento · prevención · composición corporal · retorno tras lesión |
| D2 | **Momento de temporada** | Pretemporada · temporada · playoffs · off-season |
| D3 | **Frecuencia de partidos** | Ninguno · 1/semana · 2/semana · 3+/semana |

**`[EVIDENCIA]`** D3 no es un detalle: **dos días de descanso (~72 h) pueden no bastar** para recuperarse del daño muscular inducido por el partido en periodos congestionados. Ver [`../01-investigacion/05-metodologias-fiba-nba-euroliga.md`](../01-investigacion/05-metodologias-fiba-nba-euroliga.md) §4 *(atribución por confirmar)*.

Si D1 = "retorno tras lesión" → se activa el escenario 8 y su requisito de supervisión profesional, no negociable.

### Bloque E — Implementos *(bloqueante — el más importante)*

**Pregunta literal que debe hacer el agente:**

> Dime exactamente qué tienes disponible. Si dudas de algo, no lo incluyas — prefiero darte un plan que puedas ejecutar entero a uno que asuma material que no tienes.

Lista de comprobación, contra [`../03-datos/catalogo-implementos.md`](../03-datos/catalogo-implementos.md):

```
ESPACIO      □ habitación (~2×2 m)   □ espacio medio (~5×5 m)   □ cancha
             □ pared libre   □ mobiliario estable   □ escalón o banco fijo

BALONCESTO   □ balón   □ canasta   □ conos

CASERO       □ esterilla   □ banda ligera   □ banda larga
             □ mancuernas ligeras (≤10 kg)   □ kettlebell   □ balón medicinal

GIMNASIO     □ mancuernas variables   □ barra   □ discos   □ banco
             □ poleas   □ máquinas   □ barra de dominadas   □ cardio

ALTO REND.   □ rack   □ plataforma   □ cajones pliométricos   □ trineo
             □ vallas   □ GPS/acelerómetro   □ plataforma de fuerza

PERSONAS     □ compañero de entrenamiento
             □ supervisión de un profesional
```

**`[INFERENCIA]`** El agente debe pedir la lista **por defecto de exclusión**: lo no marcado no existe. Es más seguro que asumir disponibilidad y prescribir algo inejecutable.

### Bloque F — Nutrición *(opcional; solo si se pide plan nutricional)*

| # | Campo | Activa |
|---|---|---|
| F1 | ¿Quieres también plan nutricional? | — |
| F2 | Horas semanales totales de entrenamiento | Coeficiente energético |
| F3 | Restricciones dietéticas (vegetariano / vegano / alergias / intolerancias) | P6, P7 |
| F4 | Contexto de comidas (casa / hotel / residencia / presupuesto limitado) | Adaptación |
| F5 | ¿Has notado fatiga persistente, pérdida de peso no buscada, alteraciones del sueño o ausencia/irregularidad menstrual? | **B5 → parada total** |
| F6 | ¿Tu relación con la comida te genera ansiedad o preocupación frecuente? | **B6 → parada total** |

> **F5 y F6 son las preguntas más delicadas del cuestionario.** Se formulan en lenguaje neutro y no clínico. El agente **no interpreta ni diagnostica**: si la respuesta es afirmativa, deriva. Ver [`reglas-de-seguridad.md`](reglas-de-seguridad.md) §2.
>
> Si el usuario es menor: **no se calcula plan nutricional en ningún caso** ([`../03-datos/tablas-nutricionales.md`](../03-datos/tablas-nutricionales.md) §7).

---

## 2. Orden de aplicación

```
1. Bloque B (salud)        → si activa B1-B8: PARAR. No seguir preguntando.
2. Bloque A (identificación)
3. Bloque E (implementos)  → define el escenario
4. Bloque C (disponibilidad)
5. Bloque D (contexto)
6. Bloque F (solo si se pide plan nutricional)
```

**El bloque de salud va primero por diseño.** Si hay condición de parada, no tiene sentido recopilar treinta datos más para acabar derivando: es pedirle al usuario un esfuerzo que no va a servir de nada.

---

## 3. Qué hacer con respuestas incompletas

| Situación | Acción |
|---|---|
| Falta un campo **bloqueante** | Preguntar. No generar plan |
| El usuario dice "lo que sea, dame algo" | Explicar que sin implementos y estado de salud el plan puede ser inejecutable o inseguro. Insistir una vez |
| El usuario sigue sin responder tras insistir | Ofrecer el **escenario 1** (sin material), que es seguro por defecto, **declarando explícitamente que es una asunción de mínimos** |
| Respuestas contradictorias | Preguntar cuál es la correcta. No elegir por él |

**`[INFERENCIA]`** El fallback al escenario 1 es la única concesión admisible ante un usuario que no colabora: es el escenario sin material, sin carga externa y sin impacto de alta demanda. Aun así, **el bloque de salud sigue siendo bloqueante** — de ese no hay fallback.

---

## 4. Salida del protocolo

Al terminar, el agente confirma lo entendido antes de generar nada:

```
PERFIL RECOGIDO
  Edad · sexo · peso · posición · nivel · años de práctica
  Experiencia en fuerza: [ ]

ESTADO DE SALUD
  Condiciones de precaución activadas: [P#, o ninguna]

ESCENARIO ASIGNADO
  Escenario [1-8] — [nombre]
  Implementos declarados: [IDs]

DISPONIBILIDAD
  [días]/semana × [minutos] · partidos: [frecuencia]

OBJETIVO Y FASE
  [objetivo] · [fase de temporada]

LIMITACIONES DE ESTE ESCENARIO
  [qué no se va a poder entrenar y por qué]

¿Es correcto? Corrígeme antes de que genere el plan.
```

**El apartado de limitaciones no es opcional.** Decir por adelantado qué no cubre el escenario es lo que impide que el plan se lea como más completo de lo que es — ver la tabla de cobertura en [`../03-datos/escenarios-de-entrenamiento.md`](../03-datos/escenarios-de-entrenamiento.md) §9.
