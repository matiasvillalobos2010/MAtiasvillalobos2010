# Empieza aquí

Todo el proyecto, para ejecutarlo en tu equipo. No necesita internet ni cuenta
en ningún sitio.

---

## Lo mínimo: abrir la app

**Doble clic en `ABRIR-APP.bat`** (Windows) o `ABRIR-APP.sh` (macOS/Linux).

Se abre la app en tu navegador. Funciona entera: cuestionario de iniciación,
plan por objetivo, biblioteca de ejercicios y registro de progreso. No hace
falta instalar nada — ni Node, ni Python, ni servidor.

Si prefieres ir a mano: `06-app/app.html`, doble clic.

## Si además la quieres en el móvil

**Doble clic en `INICIAR-SERVIDOR.bat`** (o `.sh`).

Se abre una ventana negra que imprime dos direcciones:

```
  En este equipo:   http://localhost:8080/
  Desde el móvil o la tablet (misma wifi):
      http://192.168.X.X:8080/   (Wi-Fi)
```

La segunda es la que escribes en el teléfono. **Deja la ventana abierta**: si la
cierras, se para el servidor.

Necesita Node o Python instalados. Si no tienes ninguno, la ventana te lo dirá y
te quedas con `ABRIR-APP` de arriba, que hace lo mismo salvo el móvil.

Detalles, cortafuegos y qué hacer si el móvil no conecta:
[`06-app/servidor/LEEME.md`](06-app/servidor/LEEME.md).

---

## Qué hay en cada carpeta

| Carpeta | Qué contiene |
|---|---|
| [`01-investigacion/`](01-investigacion/) | La investigación: fisiología, lesiones, fuerza, carga, nutrición, casos de éxito y la bibliografía de 70 fuentes |
| [`02-agente/`](02-agente/) | El agente: system prompt, reglas de seguridad, recomendador por objetivo, lógica de adaptación |
| [`03-datos/`](03-datos/) | Biblioteca de ejercicios, catálogo de implementos, los 8 escenarios y las tablas nutricionales |
| [`04-plantillas/`](04-plantillas/) | Plantillas de plan de entrenamiento, nutrición e informe de progreso |
| [`05-salidas/`](05-salidas/) | Vacía, para lo que vayas generando |
| [`06-app/`](06-app/) | La app, las dos apps originales y el servidor local |

Empieza por [`README.md`](README.md) si quieres el recorrido completo, o por
[`01-investigacion/00-metodologia-y-fuentes.md`](01-investigacion/00-metodologia-y-fuentes.md)
si quieres saber primero cómo se comprobó cada fuente y qué se descartó.

---

## Tres cosas que conviene saber antes de empezar

**Te va a pedir una contraseña la primera vez.** La app crea una cuenta local y cifra tus datos con una clave derivada de esa contraseña. No se guarda en ninguna parte y **no hay forma de recuperarla**: si la olvidas, los datos no vuelven. Anótala donde guardes las que te importan.

**Dónde viven tus datos.** La app guarda perfiles y progreso cifrados en el
navegador (IndexedDB), no en un servidor. Eso significa que **cada dirección tiene su
propia base de datos**: lo que registres abriendo `app.html` con doble clic no
aparece en `localhost:8080`, ni en el móvil. Elige una sola forma de abrirla y
quédate con ella. Para mover o respaldar: *Perfil → Copia de seguridad →
Exportar todo*.

**Qué nivel de evidencia tiene esto.** Las 70 fuentes son de nivel V2:
localizadas y con metadatos confirmados, pero **no abiertas directamente** —el
entorno donde se construyó el proyecto no tenía acceso a las bases académicas—,
y así está declarado en cada documento. Las dosificaciones son práctica
convencional, no evidencia; la única con respaldo real es la frecuencia del
bloque preventivo (2-3 sesiones por semana). La app no diagnostica, no calcula
ACWR y no te compara con baremos. No sustituye a un profesional presencial.
