# Lógica de adaptación (motor de sustitución)

Dado un ejercicio y un escenario, resuelve a algo **ejecutable con los implementos declarados**, preservando patrón de movimiento y estímulo.

**Garantía que implementa:** el agente nunca prescribe material que el deportista no tiene.

---

## 1. Regla de admisión

```
ADMISIBLE(ejercicio, escenario) ⟺ REQUIERE(ejercicio) ⊆ DISPONIBLE(escenario)
```

Comparación de conjuntos sobre los IDs de [`../03-datos/catalogo-implementos.md`](../03-datos/catalogo-implementos.md). No hay interpretación: o el conjunto está contenido o no lo está.

`REQUIERE = []` → admisible en los ocho escenarios.

### Segundo filtro: competencia

```
PRESCRIBIBLE(ejercicio, deportista) ⟺ ADMISIBLE ∧ COMPETENCIA_SUFICIENTE
```

Tener el material no basta. `ROD-03`, `CAD-03` y `SUP-03` (levantamientos con barra) exigen competencia técnica declarada en el campo A7 del [`protocolo-de-evaluacion-inicial.md`](protocolo-de-evaluacion-inicial.md).

**Un ejercicio admisible pero no prescribible entra igualmente en el motor de sustitución.** Se degrada como si el material no estuviera.

---

## 2. Orden de preferencia de sustitución

Cuando un ejercicio no es prescribible, se busca reemplazo en este orden. Se para en el primer nivel que dé resultado:

```
Nivel 1  Mismo patrón + mismo estímulo, con el material disponible
Nivel 2  Mismo patrón + estímulo próximo (misma cualidad, menor intensidad)
Nivel 3  Alternativa declarada en la ficha del ejercicio (columna "Alternativa sin material")
Nivel 4  Fallback universal del bloque (§4)
Nivel 5  OMITIR y declarar la limitación
```

**Nunca se sustituye por un ejercicio de otro patrón de movimiento.** Reemplazar una bisagra de cadera por una sentadilla porque "ambas son de pierna" es cambiar el estímulo y falsear el plan. Antes que eso, se omite y se dice.

### Ejemplo trazado

> Deportista en escenario 4 (material casero), quiere fuerza máxima de pierna.

```
Objetivo: fuerza máxima, patrón dominante de rodilla
Candidato: ROD-03 (sentadilla con barra)
  REQUIERE: BARRA, DISCOS, RACK
  DISPONIBLE escenario 4: ..., MANCUERNA-LIG, ...
  BARRA ∉ DISPONIBLE → NO ADMISIBLE

Nivel 1 — mismo patrón, mismo estímulo (fuerza máxima) con material disponible
  → No existe. Mancuernas ≤10 kg no permiten fuerza máxima.

Nivel 2 — mismo patrón, estímulo próximo
  → ROD-04 (sentadilla goblet), REQUIERE: MANCUERNA-LIG ✓
  → ROD-02 (búlgara), REQUIERE: MOBILIARIO ✓  [unilateral, mayor carga relativa]

RESULTADO: ROD-04 + ROD-02

DECLARACIÓN OBLIGATORIA AL USUARIO:
  "Con mancuernas de hasta 10 kg no se puede entrenar fuerza máxima.
   Te doy fuerza general y trabajo unilateral, que aumenta la carga
   relativa por pierna. Si tu objetivo es fuerza máxima, necesitas
   material de escenario 5 o 6."
```

**La declaración es parte del resultado, no un añadido.** Un plan que sustituye en silencio deja al deportista creyendo que entrena algo que no entrena.

---

## 3. Matriz de sustitución por patrón

| Patrón | Con carga externa | Casero | Sin material *(siempre disponible)* |
|---|---|---|---|
| Dominante de rodilla | `ROD-03`, `ROD-09` | `ROD-04`, `ROD-02`, `ROD-07` | **`ROD-01`**, `ROD-05`, `ROD-10` |
| Dominante de cadera | `CAD-03`, `CAD-09` | `CAD-04`, `CAD-08` | **`CAD-01`**, `CAD-02`, `CAD-05` |
| Excéntrico isquiosural | — | `CAD-06` | **`CAD-07`**, `CAD-02` lento |
| Empuje horizontal | `SUP-03` | `SUP-02` | **`SUP-01`** |
| Empuje vertical | `SUP-04` | — | **`SUP-05`** |
| Tracción | `SUP-06` | `SUP-09`, `SUP-10`, `SUP-07` | **`SUP-08`** |
| Potencia vertical | `PLI-05`, `PLI-04` | `PLI-04` con escalón | **`PLI-01`**, `PLI-03` |
| Potencia horizontal | `ACO-07` | — | **`PLI-06`** *(requiere `ESP-MED`)* → `PLI-01` |
| Potencia lateral | `PLI-09` | — | **`PLI-07`** |
| Aterrizaje / valgo | — | — | **`PREV-06`**, `PREV-07`, `PLI-10` |
| Propiocepción | — | `PREV-04` | **`PREV-01`**, `PREV-05` |
| Antiextensión (core) | `CORE-07` | `CORE-03` | **`CORE-01`** |
| Antirrotación (core) | `CORE-06` | `CORE-05` | **`CORE-02`**, `CORE-05` isométrico |
| Velocidad lineal | `ACO-07` | — | **`ACO-01`** *(requiere `ESP-CANCHA`)* → `ACO-02` |
| Cambio de dirección | `ACO-03` | — | **`ACO-04`** *(requiere `ESP-MED`)* → `PLI-07` |
| Frenado excéntrico | — | — | **`ACO-06`** *(requiere `ESP-MED`)* → `PLI-10` |
| Reactivo | `ACO-05` con `COMPANERO` | — | **`PREV-01`** ojos cerrados, `ACO-04` con temporizador |
| Estímulo metabólico | `ACO-10` | — | **`ACO-02`** |

En negrita, la opción por defecto de cada patrón sin material.

> ⚠️ **Los patrones con restricción de espacio** (velocidad, COD, frenado, potencia horizontal) tienen doble flecha: su opción sin material aún requiere espacio. En `ESP-MIN` (escenarios 1, 2 y 7) **se degradan o se omiten**. El espacio limita tanto como el material.

---

## 4. Fallback universal

Si ningún nivel anterior da resultado, se recurre a estos ocho, ejecutables con solo espacio mínimo y suelo firme:

`ROD-01` · `ROD-05` · `CAD-01` · `CAD-02` · `SUP-01` · `CORE-01` · `PREV-01` · `ACO-02`

**El motor nunca devuelve "no hay ejercicio posible".** En el peor caso devuelve estos ocho más una declaración de todo lo que no se puede entrenar.

---

## 5. Regla de fallo — cuándo omitir

Se llega al nivel 5 (omitir) cuando:

1. Ningún ejercicio del patrón es admisible con los implementos declarados **y** el fallback no preserva el estímulo buscado.
2. Una contraindicación bloquea todo el patrón (p. ej. dolor anterior de rodilla y objetivo pliométrico de alta demanda).
3. El escenario carece del espacio necesario, sin degradación que conserve el estímulo.

**Formato obligatorio de la omisión:**

```
NO INCLUIDO: [cualidad o patrón]
MOTIVO: [implemento, espacio o contraindicación que falta]
QUÉ HARÍA FALTA: [qué habilitaría entrenarlo]
```

Omitir en silencio es peor que no poder entrenar algo: el deportista se queda sin saber qué le falta.

---

## 6. Reglas de degradación por perfil

Se aplican **después** de resolver la disponibilidad, y pueden degradar un ejercicio perfectamente admisible.

| Condición del perfil | Degradación |
|---|---|
| Sin experiencia en fuerza (A7) | `ROD-03`, `CAD-03`, `SUP-03` → alternativas sin barra |
| Menor con supervisión (P5) | Sin carga externa máxima; `PLI-05` → `PLI-03` |
| Menor pre-PHV (`P4`) | Prioridad a pliometría simple sobre trabajo combinado con carga |
| Menor post-PHV (`P4`) | Trabajo combinado de fuerza y pliometría |
| Dolor anterior de rodilla (P2) | Sin `PLI-05`; volumen pliométrico reducido |
| Historial de esguince de tobillo (P1) | `PREV-01`, `PREV-03`, `PREV-05` obligatorios; progresión pliométrica conservadora |
| Historial de LCA con alta (P3) | `PREV-06`, `PREV-07` obligatorios |
| 1 sesión/semana (C1) | Declarar que el bloque preventivo queda **infradosificado** respecto a las 2-3 sesiones documentadas (`P5`) |
| 3+ partidos/semana (D3) | Reducir volumen; **no asumir recuperación completa con 72 h** |

**`[EVIDENCIA]`** Las degradaciones por estado madurativo derivan de que la respuesta al entrenamiento difiere según PHV: los pre-PHV mejoraron más en velocidad con pliometría, los post-PHV respondieron mejor a trabajo combinado. [NSCA LTAD](https://www.nsca.com/globalassets/about/position-statements/nsca_position_statement_long-term_athletic_development.pdf) — DOI: 10.1519/JSC.0000000000001387.

---

## 7. Algoritmo completo

```
PARA cada cualidad objetivo del plan:

  1. ¿Hay condición de PARADA TOTAL (B1-B8)?
        SÍ → abortar todo el plan y derivar. FIN.

  2. Seleccionar ejercicio de referencia para la cualidad

  3. ¿ADMISIBLE en el escenario?  (REQUIERE ⊆ DISPONIBLE)
        NO → ir a 5

  4. ¿PRESCRIBIBLE?  (competencia suficiente + sin contraindicación)
        SÍ → asignar. Ir a 8
        NO → ir a 5

  5. Buscar sustituto: nivel 1 → 2 → 3 → 4
        Encontrado → asignar + REGISTRAR la sustitución

  6. ¿Nada encontrado?
        → OMITIR con formato del §5

  7. Aplicar degradaciones de perfil (§6)

  8. Verificar: REQUIERE(asignado) ⊆ DISPONIBLE
        Si falla → error de motor. Volver a 5.

AL CERRAR EL PLAN:
  · Listar todas las sustituciones aplicadas
  · Listar todas las omisiones con su motivo
  · Declarar qué cualidades no cubre el escenario
  · Incluir la advertencia de nivel de verificación V2
```

El paso 8 es una comprobación redundante a propósito: es la última red antes de que un implemento no declarado llegue al plan del usuario.

---

## 8. Verificación del motor

Prueba: **¿puede el motor resolver las 18 cualidades de la matriz (§3) en el escenario 1**, el más restrictivo (`ESP-MIN`, `SUELO-DURO`, `PARED`)?

| Cualidad | Resolución en escenario 1 | Estado |
|---|---|---|
| Dominante de rodilla | `ROD-01`, `ROD-05`, `ROD-08`, `ROD-10` | ✅ |
| Dominante de cadera | `CAD-01`, `CAD-02`, `CAD-05` | ✅ |
| Excéntrico isquiosural | `CAD-07`, `CAD-02` lento | ✅ |
| Empuje horizontal | `SUP-01` | ✅ |
| Empuje vertical | `SUP-05` | ✅ |
| Tracción | `SUP-08` | ⚠️ solo isométrico — sin tracción cargada |
| Potencia vertical | `PLI-01`, `PLI-02`, `PLI-03` | ✅ |
| Potencia horizontal | — | ❌ falta `ESP-MED` |
| Potencia lateral | `PLI-07` | ✅ |
| Aterrizaje / valgo | `PLI-10`, `PREV-06`, `PREV-07` | ✅ |
| Propiocepción | `PREV-01`, `PREV-05` | ✅ |
| Antiextensión | `CORE-01` | ✅ |
| Antirrotación | `CORE-02` | ✅ |
| Velocidad lineal | — | ❌ falta `ESP-CANCHA` |
| Cambio de dirección | `PLI-07` como aproximación | ⚠️ parcial |
| Frenado excéntrico | `PLI-10` como aproximación | ⚠️ parcial |
| Reactivo | `PREV-01` ojos cerrados | ⚠️ limitado |
| Estímulo metabólico | `ACO-02` | ✅ |

**Resultado: 12 de 18 resueltas por completo, 4 parciales, 2 imposibles.**

Las dos imposibles (potencia horizontal y velocidad lineal) lo son por **falta de espacio**, no de material — no hay ejercicio que las resuelva en 2×2 m. El motor las omite con el formato del §5, que es exactamente el comportamiento correcto.

**Y algo que el motor no debe hacer:** ofrecer trabajo pliométrico vertical como si compensara la velocidad lineal. El principio `P2` lo prohíbe — la transferencia de la pliometría al esprint de 20 m no es significativa. Sustituir ahí sería sustituir un estímulo por otro distinto y llamarlo equivalente.
