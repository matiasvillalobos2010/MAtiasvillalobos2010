# Plan de entrenamiento — {{NOMBRE_O_PERFIL}}

**Generado:** {{FECHA}} · **Escenario:** {{N}} — {{NOMBRE_ESCENARIO}}

---

## 1. Perfil

| Campo | Valor |
|---|---|
| Edad · sexo | {{EDAD}} · {{SEXO}} |
| Peso corporal | {{PESO}} kg |
| Posición | {{POSICION}} |
| Nivel · años de práctica | {{NIVEL}} · {{ANOS}} |
| Experiencia en fuerza | {{EXP_FUERZA}} |
| Disponibilidad | {{DIAS}} días × {{MINUTOS}} min |
| Partidos por semana | {{FREC_PARTIDOS}} |
| Objetivo | {{OBJETIVO}} |
| Fase de temporada | {{FASE}} |

**Precauciones activadas:** {{LISTA_P}} *(o "ninguna")*

**Implementos declarados:** {{LISTA_IDS}}

---

## 2. Qué cubre este plan y qué no

### Cubre
{{CUALIDADES_CUBIERTAS}}

### No cubre

| Cualidad | Motivo | Qué haría falta |
|---|---|---|
| {{CUALIDAD}} | {{MOTIVO}} | {{REQUISITO}} |

> Esta sección **no es opcional**. Un plan que calla lo que no entrena se lee como más completo de lo que es.

---

## 3. Distribución semanal

| Día | Sesión | Duración | Bloques |
|---|---|---|---|
| {{DIA}} | {{TIPO}} | {{MIN}} | {{BLOQUES}} |

**Frecuencia del bloque preventivo: {{FREC_PREV}}**
{{#si_menor_de_2}}⚠️ Con {{FREC_PREV}} sesión/semana el bloque preventivo queda **infradosificado**: el efecto documentado requiere 2-3 sesiones semanales (`P5`).{{/si}}

---

## 4. Sesiones

### Sesión {{N}} — {{NOMBRE}} ({{DURACION}})

| Bloque | Ejercicio | ID | Series × reps | Descanso | Notas |
|---|---|---|---|---|---|
| {{BLOQUE}} | {{EJERCICIO}} | `{{ID}}` | {{DOSIS}} | {{DESCANSO}} | {{NOTAS}} |

> ⚠️ Las dosificaciones son **práctica convencional, no evidencia**. Ninguna serie ni repetición concreta tiene respaldo verificado en este proyecto.

---

## 5. Sustituciones aplicadas

| Referencia | Asignado | Motivo |
|---|---|---|
| `{{ID_REF}}` | `{{ID_ASIG}}` | {{MOTIVO}} |

*(Si no hubo sustituciones, decirlo explícitamente.)*

---

## 6. Justificación

| Decisión | Principio | Etiqueta |
|---|---|---|
| {{DECISION}} | {{P#}} | `{{EVIDENCIA/PRÁCTICA/INFERENCIA}}` |

---

## 7. Progresión

| Semana | Cambio | Criterio para avanzar |
|---|---|---|
| {{SEM}} | {{CAMBIO}} | {{CRITERIO}} |

**`[INFERENCIA]`** La progresión es gradual y sin saltos bruscos de carga. Este principio es anterior e independiente del ACWR, cuyos umbrales **no se prescriben** por tener crítica metodológica publicada.

---

## 8. Seguimiento

**Registrar por sesión:** sRPE (esfuerzo percibido 1-10) × minutos = carga de sesión · sensaciones · dolor si aparece.

Limitación declarada: `sin evidencia sólida localizada` sobre criterios objetivos de recuperación en baloncesto. El seguimiento se apoya en percepción reportada.

**Qué haría cambiar el plan:** {{CRITERIOS_CAMBIO}}

---

⚠️ Este plan se apoya en una investigación cuyas fuentes fueron **localizadas pero no abiertas directamente** (nivel `V2`). Las dosificaciones son práctica convencional, no evidencia. Contrasta las fuentes antes de aplicarlo en contexto profesional. No sustituye la valoración de un profesional presencial.
