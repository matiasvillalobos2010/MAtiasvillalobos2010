# Plan de nutrición — {{NOMBRE_O_PERFIL}}

**Generado:** {{FECHA}}

> ⚠️ **No aplicable a menores en crecimiento.** Las fórmulas derivan de poblaciones adultas y de élite júnior, y no incorporan el coste energético del crecimiento.

---

## 1. Perfil

| Campo | Valor |
|---|---|
| Edad · sexo | {{EDAD}} · {{SEXO}} |
| **Peso corporal** | **{{PESO}} kg** |
| Posición | {{POSICION}} |
| Horas de entrenamiento/semana | {{HORAS}} |
| Fase de temporada | {{FASE}} |
| Objetivo | {{OBJETIVO}} |
| Restricciones dietéticas | {{RESTRICCIONES}} |
| Contexto de comidas | {{CONTEXTO}} |

**Cribado de seguridad:** {{RESULTADO_F5_F6}} — *si positivo, no se genera plan y se deriva.*

---

## 2. Cálculo — con sus supuestos a la vista

```
ENERGÍA
  Volumen {{HORAS}} h/semana  → coeficiente {{COEF_MIN}}-{{COEF_MAX}} kcal/kg
                                 [banda documentada 50-80]
  Fase {{FASE}}               → {{POSICION_EN_BANDA}}   [INFERENCIA]
  {{PESO}} kg × {{COEF}}      = {{KCAL}} kcal/día

CARBOHIDRATO
  {{TIPO_DIA}}                → {{COEF_CHO}} g/kg
  {{PESO}} × {{COEF_CHO}}     = {{G_CHO}} g/día  → {{KCAL_CHO}} kcal

PROTEÍNA
  {{OBJETIVO}}                → {{COEF_PRO}} g/kg   [convergencia de 4 fuentes]
  {{PESO}} × {{COEF_PRO}}     = {{G_PRO}} g/día  → {{KCAL_PRO}} kcal
  Reparto en {{N_TOMAS}} tomas = {{G_POR_TOMA}} g/toma   [EVIDENCIA]

GRASA (remanente)
  ({{KCAL}} − {{KCAL_CHO}} − {{KCAL_PRO}}) / 9 = {{G_GRASA}} g/día
  Suelo: {{G_GRASA}}/{{PESO}} = {{G_KG}} g/kg ≥ 0,8 ✓
```

### Supuestos que sostienen este cálculo

- El coeficiente energético procede de una banda amplia (50-80 kcal/kg) cuya **atribución no está confirmada**.
- El ajuste por fase de temporada es **inferencia**, no dato: no se localizaron cifras por fase.
- El suelo de grasa (0,8 g/kg) es **prudencial, sin respaldo verificado**.
- **La posición entra vía peso corporal**, no por coeficiente propio: no existe fuente que diferencie requerimientos por posición de juego.
- Todo esto es **punto de partida sujeto a seguimiento**, no prescripción.

---

## 3. Objetivos diarios

| Macronutriente | g/día | g/kg | kcal | % |
|---|---|---|---|---|
| Carbohidrato | {{G_CHO}} | {{CHO_KG}} | {{KCAL_CHO}} | {{PCT_CHO}} |
| Proteína | {{G_PRO}} | {{PRO_KG}} | {{KCAL_PRO}} | {{PCT_PRO}} |
| Grasa | {{G_GRASA}} | {{G_KG}} | {{KCAL_GRASA}} | {{PCT_GRASA}} |
| **Total** | | | **{{KCAL}}** | 100 % |

---

## 4. Ajuste por tipo de día

| Tipo de día | CHO (g/kg) | Total CHO |
|---|---|---|
| Descanso / ligero | 4-5 | {{ }} |
| Entrenamiento estándar | 5-7 | {{ }} |
| Partido o doble sesión | 7-8 | {{ }} |
| Competición densa | 8-10 | {{ }} |

**Contexto que importa:** en baloncesto el problema documentado es la **subingesta** de carbohidrato — el 56 % de jugadores júnior de élite consume menos de 6 g/kg. No el exceso.

---

## 5. Distribución de tomas

| Toma | Momento | Proteína (g) | Notas |
|---|---|---|---|
| {{N}} | {{MOMENTO}} | {{G}} | {{NOTAS}} |

> `sin evidencia sólida localizada` sobre timing pre-partido, intra-partido y ventana de recuperación en baloncesto. Lo único con respaldo aquí es el **reparto proteico en 4-6 tomas diarias**. No se emiten pautas horarias detalladas como si estuvieran respaldadas.

---

## 6. Hidratación

**Método individual:**
```
Pérdida de sudor (L) = (peso pre − peso post) + líquido ingerido
Tasa de sudoración (L/h) = pérdida / duración
```

**`[EVIDENCIA]`** El sudor en baloncesto tiene concentración de sodio más alta que en fútbol o rugby: la reposición de sodio merece atención específica.

> No se dan cifras de ml/hora ni de mmol/L: las localizadas procedían de fuentes con conflicto de interés comercial y fueron excluidas. Para pautas cuantitativas, profesional.

---

## 7. Suplementación — información, no prescripción

| Sustancia | Estado de la evidencia | Aplicación a este caso |
|---|---|---|
| {{SUSTANCIA}} | {{EVIDENCIA}} | {{APLICACION}} |

**Siempre:** este documento **no certifica que ninguna sustancia esté permitida**. Consulta la lista vigente de la AMA/WADA y ten en cuenta el riesgo de contaminación de suplementos.

---

## 8. Adaptaciones de contexto

{{ADAPTACIONES}}

> `sin evidencia sólida localizada` para presupuesto limitado, vegetarianismo/veganismo, alergias y comida de hotel en población de baloncesto. Las adaptaciones se hacen por sustitución de fuentes manteniendo los objetivos calculados: **es razonamiento de aplicación, no evidencia**.

---

## 9. Seguimiento

Peso corporal · energía percibida · rendimiento · adherencia.

**Si el peso, el rendimiento o la sensación de energía no acompañan, el número estaba mal para esta persona**, por bien derivado que estuviera. El seguimiento manda sobre el cálculo.

---

⚠️ Fuentes de nivel `V2`: localizadas, no abiertas directamente. Este plan no sustituye a un dietista-nutricionista deportivo.
