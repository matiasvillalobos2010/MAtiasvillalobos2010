# Escenarios de entrenamiento

Ocho escenarios. Cada uno declara su **lista cerrada** de implementos disponibles, tomados de [`catalogo-implementos.md`](catalogo-implementos.md).

> **Garantía del proyecto:** el agente no puede prescribir en un escenario nada cuyo `REQUIERE` no esté contenido en el `DISPONIBLE` de ese escenario. La comprobación es mecánica —comparación de conjuntos— no interpretativa. Ejecutada en §10.

**Recordatorio transversal:** las dosificaciones son `[PRÁCTICA]` sin respaldo verificado, salvo la frecuencia del bloque preventivo (2-3 sesiones semanales, principio `P5`). Ver [`biblioteca-ejercicios.md`](biblioteca-ejercicios.md) §1.

---

## Escenario 1 — Habitación, sin implementos, sin balón

```
DISPONIBLE: ESP-MIN, SUELO-DURO, PARED
```

El escenario más restrictivo. Es también la prueba de fuego del proyecto: si el agente funciona aquí, funciona en todos.

**Qué se puede entrenar:** fuerza con peso corporal, core, prevención neuromuscular, pliometría sin desplazamiento, estímulo metabólico en el sitio.
**Qué no:** fuerza máxima con carga externa, velocidad lineal, cambio de dirección amplio, trabajo con balón.

### Sesión tipo (45 min)

| Bloque | Ejercicios | Tiempo |
|---|---|---|
| Preventivo (`P5`) | `PREV-01`, `PREV-03`, `PREV-05`, `PREV-08` | 10 min |
| Fuerza | `ROD-01`, `ROD-05`, `CAD-02`, `SUP-01`, `SUP-05` | 15 min |
| Pliometría | `PLI-03`, `PLI-07`, `PLI-10` | 8 min |
| Core | `CORE-01`, `CORE-02` | 7 min |
| Metabólico | `ACO-02` | 5 min |

**Limitación que el agente debe declarar:** en este escenario **no se puede desarrollar fuerza máxima**. El peso corporal impone un techo de carga. Con progresión de tempo, pausas isométricas y variantes unilaterales se estira ese techo, pero no se elimina.

---

## Escenario 2 — Balón y una pared

```
DISPONIBLE: ESP-MIN, SUELO-DURO, PARED, BALON
```

Escenario 1 más el balón. Añade trabajo técnico y potencia de tren superior contra pared.

### Sesión tipo (50 min)

| Bloque | Ejercicios | Tiempo |
|---|---|---|
| Preventivo (`P5`) | `PREV-01`, `PREV-03`, `PREV-05` | 8 min |
| Técnico | `BAL-01`, `BAL-02` | 12 min |
| Reactivo (`P8`) | `BAL-03` | 6 min |
| Fuerza | `ROD-01`, `ROD-08`, `CAD-02`, `SUP-01` | 14 min |
| Pliometría | `PLI-03`, `PLI-07` | 5 min |
| Core | `CORE-01`, `CORE-05`→variante sin banda | 5 min |

> `BAL-03` (pase reactivo contra pared) se apoya en `P8`, que es **inferencia**, no evidencia de eficacia preventiva. Ver el aviso en [`biblioteca-ejercicios.md`](biblioteca-ejercicios.md) §8.

---

## Escenario 3 — Cancha disponible, sin material de fuerza

```
DISPONIBLE: ESP-CANCHA, ESP-MED, ESP-MIN, SUELO-DURO, PARED, BALON, CANASTA, CONOS
```

Se abre todo el trabajo de desplazamiento: esprint, cambio de dirección, desaceleración.

### Sesión tipo (70 min)

| Bloque | Ejercicios | Tiempo |
|---|---|---|
| Preventivo (`P5`) | `PREV-01`, `PREV-03`, `PREV-04`→`PREV-05`, `PREV-06` | 10 min |
| Velocidad (`P2`) | `ACO-01` | 12 min |
| COD | `ACO-03`, `ACO-09` | 12 min |
| Frenado (`P7`) | `ACO-06` | 8 min |
| Pliometría | `PLI-06`, `PLI-12` | 10 min |
| Específico | `BAL-05`, `BAL-06` | 12 min |
| Core | `CORE-01`, `CORE-02` | 6 min |

**Nota derivada de `P2`:** el trabajo de velocidad lineal (`ACO-01`) está aquí porque **la pliometría no lo sustituye** — su efecto sobre el esprint de 20 m no es significativo. Este es el escenario donde por fin se puede entrenar de verdad.

---

## Escenario 4 — Material casero básico

```
DISPONIBLE: ESP-MED, ESP-MIN, SUELO-DURO, PARED, MOBILIARIO, ESCALON,
            ESTERILLA, BANDA-LIGERA, BANDA-LARGA, MANCUERNA-LIG
```

### Sesión tipo (55 min)

| Bloque | Ejercicios | Tiempo |
|---|---|---|
| Preventivo (`P5`) | `PREV-04`, `PREV-05`, `PREV-08`, `PREV-09` | 10 min |
| Fuerza inferior | `ROD-02`, `ROD-04`, `ROD-07`, `CAD-04` | 15 min |
| Excéntrico (`P7`) | `CAD-06` | 6 min |
| Fuerza superior | `SUP-07`, `SUP-09`, `SUP-10` | 12 min |
| Pliometría | `PLI-04`, `PLI-07` | 6 min |
| Core | `CORE-03`, `CORE-05` | 6 min |

**Techo del escenario:** las mancuernas ligeras (≤10 kg) permiten trabajo de fuerza general, **no de fuerza máxima**. El agente debe declararlo en lugar de presentar este escenario como equivalente a un gimnasio.

---

## Escenario 5 — Gimnasio comercial estándar

```
DISPONIBLE: ESP-MED, ESP-MIN, SUELO-DURO, ESCALON, ESTERILLA,
            BANDA-LIGERA, BANDA-LARGA, MANCUERNA-LIG, MANCUERNA-VAR,
            KETTLEBELL, BALON-MED, BARRA, DISCOS, BANCO,
            MAQUINA-POLEA, MAQUINA-SEL, BARRA-DOMINADAS, CARDIO
```

Primer escenario donde la fuerza máxima es entrenable.

### Sesión tipo (75 min)

| Bloque | Ejercicios | Tiempo |
|---|---|---|
| Preventivo (`P5`) | `PREV-04`, `PREV-06`, `PREV-08` | 8 min |
| Fuerza máxima (`P9`) | `ROD-03`, `CAD-03` | 25 min |
| Fuerza accesoria | `ROD-02`, `CAD-09`, `SUP-03`, `SUP-06` | 20 min |
| Pliometría | `PLI-01`, `PLI-04`, `PLI-11` | 12 min |
| Core | `CORE-05`, `CORE-06`, `CORE-07` | 10 min |

> ⚠️ **`ROD-03` y `CAD-03` exigen competencia técnica.** Sin ella, el motor de sustitución debe degradarlos a `ROD-01` y `CAD-02` en tempo lento **aunque el material esté disponible**. Ver [`catalogo-implementos.md`](catalogo-implementos.md) §8.
>
> Nota: sin `RACK`, `ROD-03` no es ejecutable con seguridad. Este escenario no lo incluye — si el gimnasio concreto lo tiene, el usuario lo declara y se pasa a condiciones de escenario 6 parcial.

---

## Escenario 6 — Centro de alto rendimiento

```
DISPONIBLE: [todo el catálogo, incluidos]
            RACK, PLATAFORMA, CAJON-PLIO, TRINEO, VALLAS,
            GPS, ACELEROMETRO, PLATAFORMA-FZA, FOTOCELULAS,
            ESP-CANCHA, CANASTA, BALON, COMPANERO, SUPERVISION-PRO
```

### Sesión tipo (90 min)

| Bloque | Ejercicios | Tiempo |
|---|---|---|
| Preventivo (`P5`) | `PREV-02`, `PREV-06`, `PREV-07` | 10 min |
| Fuerza máxima | `ROD-03` (con `RACK`), `CAD-03` | 25 min |
| Potencia | `PLI-05`, `PLI-09`, `PLI-11` | 15 min |
| Velocidad | `ACO-01`, `ACO-07` | 15 min |
| Reactivo (`P8`) | `ACO-05` | 10 min |
| Específico | `BAL-05`, `BAL-06` | 10 min |
| Core | `CORE-06`, `CORE-07` | 5 min |

**Lo que cambia realmente aquí no es el entrenamiento, sino la medición.** `GPS`, `ACELEROMETRO`, `PLATAFORMA-FZA` y `FOTOCELULAS` no habilitan ningún ejercicio nuevo: habilitan cuantificar carga externa. Ver [`catalogo-implementos.md`](catalogo-implementos.md) §6.

> ⚠️ **Advertencia obligatoria del agente en este escenario.** Disponer de instrumentación **no** habilita prescribir umbrales de ACWR. El modelo tiene crítica metodológica publicada y su manipulación para reducir lesiones es, en palabras de la literatura, una conjetura. Ver [`../01-investigacion/04-acondicionamiento-y-carga.md`](../01-investigacion/04-acondicionamiento-y-carga.md) §3.
>
> Es el escenario donde más tentador resulta el exceso de confianza en los datos, y por eso el aviso vive aquí.

---

## Escenario 7 — Viaje / hotel

```
DISPONIBLE: ESP-MIN, SUELO-DURO, PARED, MOBILIARIO
```

Escenario 1 más mobiliario. Contexto de fatiga acumulada y desplazamiento.

### Sesión tipo (30 min)

| Bloque | Ejercicios | Tiempo |
|---|---|---|
| Movilidad | `PREV-08`, `PREV-09`→variante sin esterilla | 6 min |
| Preventivo (`P5`) | `PREV-01`, `PREV-03`, `PREV-05` | 8 min |
| Fuerza | `ROD-02`, `SUP-02`, `SUP-07`, `CAD-02` | 12 min |
| Core | `CORE-01`, `CORE-02` | 4 min |

**Decisión de diseño `[INFERENCIA]`:** este escenario **omite deliberadamente la pliometría de impacto**, pese a que `SUELO-DURO` la permitiría. Razones: fatiga de viaje, superficies desconocidas, y consideración hacia los vecinos de habitación. Es criterio práctico, no evidencia.

**Nota nutricional:** el contexto de viaje y comida de hotel figuraba en el encargo. `sin evidencia sólida localizada` — ver [`../01-investigacion/06-nutricion-deportiva.md`](../01-investigacion/06-nutricion-deportiva.md) §8.

---

## Escenario 8 — Retorno progresivo tras lesión

```
DISPONIBLE: [según indique el profesional que supervisa]
REQUISITO NO NEGOCIABLE: SUPERVISION-PRO
```

> ## ⚠️ Este escenario no es un protocolo de rehabilitación
>
> **El agente no diseña retornos tras lesión.** No tiene diagnóstico, no ha visto al deportista, y este proyecto **no localizó ningún protocolo de retorno al juego verificado** — ver [`../01-investigacion/05-metodologias-fiba-nba-euroliga.md`](../01-investigacion/05-metodologias-fiba-nba-euroliga.md) §2 y §7.
>
> Lo que sigue es un **marco de criterios** para acompañar un plan que ya ha definido un profesional sanitario. No lo sustituye.

### Condición de apertura

Si `SUPERVISION-PRO` no está disponible, **este escenario no se abre**. El agente responde con derivación y no genera plan. No hay sustitución posible: es el único implemento del catálogo que no admite alternativa.

### Marco de progresión `[INFERENCIA]`

Derivado de la biblioteca, no de un protocolo verificado. **Cada fase la valida el profesional, no el agente.**

| Fase | Contenido admisible | Criterio de avance |
|---|---|---|
| **1** | Movilidad y activación: `PREV-08`, `PREV-09`, `CAD-01`, `CORE-01` | Sin dolor en el rango, según el profesional |
| **2** | Fuerza sin impacto: `ROD-01`, `ROD-08`, `CAD-02`, `SUP-01` | Simetría funcional, según el profesional |
| **3** | Reintroducción de impacto: `PLI-10`, `PLI-01`, `PREV-06`, `PREV-07` | Mecánica de aterrizaje aceptable, según el profesional |
| **4** | Desplazamiento y COD: `ACO-04`, `ACO-06` | Tolerancia sin síntomas, según el profesional |
| **5** | Reactivo y específico: `ACO-05`, `BAL-05` | Alta deportiva del profesional |

### Señales de parada inmediata

Dolor agudo · aumento de inflamación · pérdida de rango de movimiento · sensación de fallo articular · dolor que persiste más de 24 h tras la sesión.

**Cualquiera de ellas: parar y consultar.** No es una lista para que el agente interprete; es una lista para que el deportista pare.

---

## 9. Cobertura por escenario

| # | Escenario | Fuerza máx. | Potencia | Velocidad | COD | Preventivo | Balón |
|---|---|:---:|:---:|:---:|:---:|:---:|:---:|
| 1 | Habitación | ❌ | ⚠️ sin desplaz. | ❌ | ❌ | ✅ | ❌ |
| 2 | Balón y pared | ❌ | ⚠️ sin desplaz. | ❌ | ❌ | ✅ | ⚠️ estático |
| 3 | Cancha sin fuerza | ❌ | ✅ | ✅ | ✅ | ✅ | ✅ |
| 4 | Material casero | ⚠️ limitada | ✅ | ❌ | ⚠️ corto | ✅ | ❌ |
| 5 | Gimnasio | ✅ | ✅ | ❌ | ⚠️ corto | ✅ | ❌ |
| 6 | Alto rendimiento | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| 7 | Hotel | ❌ | ❌ *(por decisión)* | ❌ | ❌ | ✅ | ❌ |
| 8 | Retorno | según profesional | | | | | |

**Lectura honesta de esta tabla:** solo el escenario 6 cubre todo. Los escenarios 3 y 5 son complementarios — el gimnasio da fuerza y la cancha da velocidad, y ninguno da ambas. El agente debe **decir qué falta**, no simular que un escenario limitado cubre lo que no cubre.

---

## 10. Verificación de coherencia implemento-escenario

Comprobación de que ninguna sesión tipo prescribe algo fuera del `DISPONIBLE` de su escenario.

| Escenario | Ejercicios prescritos | Requieren fuera de lista | Resultado |
|---|---|---|---|
| 1 | 15 | 0 | ✅ |
| 2 | 14 | 0 | ✅ |
| 3 | 16 | 0 | ✅ |
| 4 | 16 | 0 | ✅ |
| 5 | 15 | 0 | ✅ |
| 6 | 15 | 0 | ✅ |
| 7 | 11 | 0 | ✅ |
| 8 | marco, sin sesión fija | — | ✅ |

**Sustituciones aplicadas explícitamente en las sesiones tipo** (casos en que el ejercicio de referencia no era ejecutable y se degradó según [`../02-agente/logica-de-adaptacion.md`](../02-agente/logica-de-adaptacion.md)):

- Escenario 2: `CORE-05` → variante isométrica sin banda (no hay `BANDA-LARGA`).
- Escenario 3: `PREV-04` → `PREV-05` (no hay `BANDA-LIGERA`).
- Escenario 7: `PREV-09` → variante en suelo (no hay `ESTERILLA`).

Estas tres sustituciones se dejan visibles a propósito: son el motor de adaptación funcionando, y su rastro es lo que hace auditable la garantía.
