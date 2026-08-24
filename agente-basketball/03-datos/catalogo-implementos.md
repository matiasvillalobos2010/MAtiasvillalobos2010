# Catálogo de implementos

Vocabulario controlado. **Los escenarios y los ejercicios referencian estos identificadores, nunca texto libre.**

Esa es toda la razón de ser de este archivo: convierte la comprobación *"¿este escenario prescribe algo que el deportista no tiene?"* en una operación mecánica de comparación de conjuntos, en lugar de una lectura interpretativa. Sin él, la garantía nº 3 del encargo no es auditable.

---

## 1. Cómo se usa

- Cada ejercicio de [`biblioteca-ejercicios.md`](biblioteca-ejercicios.md) declara `REQUIERE: [lista de IDs]`.
- Cada escenario de [`escenarios-de-entrenamiento.md`](escenarios-de-entrenamiento.md) declara `DISPONIBLE: [lista de IDs]`.
- **Regla de admisión:** un ejercicio es ejecutable en un escenario si y solo si `REQUIERE ⊆ DISPONIBLE`.
- `REQUIERE: []` (conjunto vacío) significa **sin material alguno** y es ejecutable en los ocho escenarios.

El motor que aplica esta regla está en [`../02-agente/logica-de-adaptacion.md`](../02-agente/logica-de-adaptacion.md).

---

## 2. Entorno y espacio

| ID | Implemento | Notas |
|---|---|---|
| `ESP-MIN` | Espacio reducido, ~2×2 m | Habitación, cuarto de hotel |
| `ESP-MED` | Espacio de ~5×5 m | Permite desplazamientos cortos |
| `ESP-CANCHA` | Cancha de baloncesto completa | Permite desplazamientos largos y trabajo de carrera |
| `SUELO-DURO` | Superficie firme y estable | Necesaria para saltos y aterrizajes |
| `PARED` | Pared libre y resistente | Para pases y apoyos |
| `MOBILIARIO` | Silla, cama, mesa estables | Escenario de hotel |
| `ESCALON` | Escalón, banco o cajón fijo | Altura estimable |

> ⚠️ `ESP-MIN` **no admite** ejercicios con desplazamiento ni pliometría de aterrizaje amplio. La restricción de espacio es tan vinculante como la de material.

---

## 3. Material de baloncesto

| ID | Implemento |
|---|---|
| `BALON` | Balón de baloncesto |
| `CANASTA` | Canasta reglamentaria |
| `CONOS` | Conos o marcadores de suelo |

---

## 4. Material de fuerza — casero y básico

| ID | Implemento |
|---|---|
| `ESTERILLA` | Esterilla o colchoneta |
| `BANDA-LIGERA` | Banda elástica de resistencia baja (tipo mini-band) |
| `BANDA-LARGA` | Banda elástica larga, anclable |
| `MANCUERNA-LIG` | Mancuernas ligeras (≤ 10 kg) |
| `KETTLEBELL` | Pesa rusa |
| `BALON-MED` | Balón medicinal |

---

## 5. Material de gimnasio comercial

| ID | Implemento |
|---|---|
| `MANCUERNA-VAR` | Mancuernas de carga variable |
| `BARRA` | Barra olímpica |
| `DISCOS` | Discos de carga |
| `BANCO` | Banco de trabajo regulable |
| `MAQUINA-POLEA` | Máquina de poleas |
| `MAQUINA-SEL` | Máquinas de carga seleccionable |
| `BARRA-DOMINADAS` | Barra fija de dominadas |
| `CARDIO` | Cinta, bicicleta, remo o elíptica |

---

## 6. Material de alto rendimiento

| ID | Implemento |
|---|---|
| `RACK` | Rack de sentadillas con barras de seguridad |
| `PLATAFORMA` | Plataforma de levantamiento |
| `CAJON-PLIO` | Cajones pliométricos de altura regulable |
| `TRINEO` | Trineo de arrastre/empuje |
| `VALLAS` | Vallas de salto |
| `GPS` | GPS o LPS de seguimiento |
| `ACELEROMETRO` | Acelerómetro / unidad inercial |
| `PLATAFORMA-FZA` | Plataforma de fuerza |
| `FOTOCELULAS` | Fotocélulas de tiempo |

> **Sobre `GPS`, `ACELEROMETRO`, `PLATAFORMA-FZA` y `FOTOCELULAS`:** son instrumentos de **medición**, no de entrenamiento. Ningún ejercicio los requiere para ejecutarse. Se catalogan porque determinan qué puede monitorizarse, no qué puede entrenarse.
>
> Esto es deliberado y viene de [`../01-investigacion/04-acondicionamiento-y-carga.md`](../01-investigacion/04-acondicionamiento-y-carga.md) §5: la carga externa requiere instrumentación disponible solo en el escenario 6, mientras que el sRPE no requiere nada. Un agente que dependiera de métricas externas sería inservible en siete de los ocho escenarios.

---

## 7. Recursos humanos y clínicos

| ID | Recurso |
|---|---|
| `COMPANERO` | Otra persona para tareas asistidas o estímulos reactivos |
| `SUPERVISION-PRO` | Profesional sanitario o preparador físico presencial |

> **`SUPERVISION-PRO` no es opcional donde se declara.** Es el implemento que habilita el escenario 8 (retorno tras lesión) y el trabajo de menores. Si el usuario no lo tiene, ese escenario **no se abre** — no se sustituye por otra cosa. Ver [`../02-agente/reglas-de-seguridad.md`](../02-agente/reglas-de-seguridad.md).

---

## 8. Lo que este catálogo no resuelve

**`[INFERENCIA]`** Dos límites que el agente debe tener presentes:

1. **Un implemento disponible no implica competencia técnica para usarlo.** Que alguien tenga `BARRA` y `RACK` no significa que sepa ejecutar una sentadilla con carga. El cuestionario inicial recoge años de práctica y experiencia con entrenamiento de fuerza precisamente por esto, y la lógica de adaptación puede rechazar un ejercicio por falta de competencia aunque el material esté disponible.
2. **El catálogo no captura la calidad ni la seguridad del material.** Una banda elástica desgastada o un cajón inestable son riesgos que ningún ID refleja.

Ninguno de los dos puntos tiene respaldo en fuente: son límites de diseño evidentes, declarados para que no se confunda disponibilidad con viabilidad.
