# Cuaderno de baloncesto — servidor local

Sirve la app desde tu propio equipo, en tu red local, sin instalar nada y sin
que salga nada a internet.

---

## 1. Arrancarlo

Descomprime la carpeta donde quieras. Dentro hay dos niveles:

```
06-app/
├── app.html              ← la app entera (un solo archivo, ~3,5 MB)
├── guia-ejecucion.html
├── seguimiento.html
└── servidor/
    ├── iniciar.sh        ← macOS y Linux
    ├── iniciar.bat       ← Windows
    ├── servidor.js       ← Node
    ├── servidor.py       ← alternativa en Python
    └── LEEME.md          ← este archivo
```

**macOS / Linux** — abre una terminal en `servidor/` y ejecuta:

```bash
./iniciar.sh
```

**Windows** — doble clic en `iniciar.bat`, o desde la consola:

```
iniciar.bat
```

Si el puerto 8080 está ocupado, pásale otro: `./iniciar.sh 8081`.

El arranque detecta Node y, si no lo hay, usa Python 3. Cualquiera de los dos
vale; no hay `npm install` ni dependencias en ninguno de los dos casos.

Al arrancar imprime algo así:

```
  Cuaderno de baloncesto — servidor local
  ----------------------------------------------
  En este equipo:   http://localhost:8080/
  Desde el móvil o la tablet (misma wifi):
      http://192.168.1.34:8080/   (en0)
  ----------------------------------------------
```

## 2. Abrirlo

- **En este equipo:** <http://localhost:8080/>
- **Desde el móvil o la tablet:** la dirección `192.168.x.x` que ha impreso el
  servidor, con el mismo puerto. El teléfono tiene que estar en **la misma
  wifi** que el equipo.

Se puede añadir a la pantalla de inicio del móvil (Safari: Compartir → Añadir a
pantalla de inicio; Chrome: menú → Añadir a pantalla de inicio) y se abre como
una app más.

Para parar el servidor: `Ctrl+C` en la ventana donde está corriendo.

## 3. Si el navegador dice que no puede conectar

Antes de mirar nada más, distingue los dos errores:

| Lo que ves | Qué significa |
|---|---|
| `ERR_CONNECTION_REFUSED` en **localhost** | El servidor **no está corriendo** en este equipo. No es un problema de red: no llegó a arrancar, o la ventana se cerró |
| `ERR_CONNECTION_TIMED_OUT` en una **IP 192.168.x.x** | Esa dirección no es la tuya, o el cortafuegos bloquea el puerto |

Un aviso sobre la IP: `192.168.1.34` es solo un **ejemplo** de este documento. La tuya la imprime el servidor al arrancar y casi seguro es distinta.

Si la ventana negra se cierra sola, ábrela desde una consola para poder leer el error: pulsa `Win+R`, escribe `cmd`, y ahí dentro arrastra `iniciar.bat` a la ventana y pulsa Enter.

## 4. Si el móvil no conecta

Por orden de probabilidad:

1. **No están en la misma red.** El móvil en datos móviles, o en la wifi de
   invitados, no ve el equipo. Comprueba la wifi del teléfono.
2. **El cortafuegos del equipo bloquea el puerto.**
   - *macOS:* Ajustes → Red → Firewall → Opciones → permitir conexiones
     entrantes para Node (o Python).
   - *Windows:* la primera vez sale un aviso de Windows Defender; hay que
     marcar **Redes privadas** y aceptar. Si lo denegaste, se cambia en
     Firewall de Windows → Permitir una aplicación.
   - *Linux:* `sudo ufw allow 8080/tcp` si usas ufw.
3. **La wifi tiene aislamiento de clientes** (*AP isolation*, común en routers
   de operador y en redes públicas): los dispositivos no se ven entre sí. Se
   desactiva en la configuración del router, o usa otra red.
4. **La IP cambió.** El router reparte IPs por DHCP y pueden cambiar al
   reiniciar. Vuelve a mirar lo que imprime el servidor al arrancar.

## 5. Sin Node y sin Python

`app.html` es un archivo autocontenido: **ábrelo directamente** con doble clic
en el navegador y funciona igual, con la base de datos y todo.

Lo único que pierdes es el acceso desde el móvil, que es justo lo que aporta el
servidor.

## 6. Dónde se guardan los datos — importante

La app guarda los perfiles y el progreso en **IndexedDB, dentro del navegador**,
**cifrados** con una clave derivada de tu contraseña (PBKDF2 + AES-GCM). No hay
servidor de datos: el servidor de esta carpeta solo entrega archivos, no recibe
ni almacena nada.

La contraseña no se guarda en ningún sitio, así que **si la olvidas los datos no
se recuperan**. Usa la exportación como copia de seguridad.

Consecuencia práctica, y conviene tenerla clara antes de meter tres meses de
entrenamientos:

- Los datos viven **por navegador y por dirección**. `http://localhost:8080` y
  `http://192.168.1.34:8080` son orígenes distintos para el navegador, así que
  **tienen bases de datos distintas**. Lo que registres en el móvil no aparece
  en el ordenador, aunque sea el mismo servidor.
- Si la IP del equipo cambia, la app abierta con la IP antigua ya no ve esos
  datos. Siguen ahí, pero bajo la dirección vieja.
- Borrar los datos del sitio en el navegador borra los perfiles.

Para mover perfiles entre dispositivos: **Perfil → Copia de seguridad →
Exportar todo**, copia el texto, y en el otro dispositivo **Importar desde
texto**. Es también la forma de tener una copia de seguridad de verdad.

Recomendación: elige **un** dispositivo como el que lleva el registro, y usa la
exportación para copias. Mantener dos en paralelo sin sincronizar termina en
dos historiales incompletos.

## 7. Qué hace y qué no hace el servidor

- Sirve archivos de la carpeta `06-app/` y de nada más: cualquier ruta que
  intente salir de ahí recibe 403.
- Escucha en `0.0.0.0`, es decir, en la red local. **No abre nada a internet**
  ni configura el router. Desde fuera de tu casa no es accesible.
- **El servidor** no tiene contraseña: cualquiera en tu wifi que sepa la
  dirección puede pedirle el archivo. Lo que sí tiene contraseña es **la app**,
  que pide usuario y clave antes de mostrar nada y guarda los datos cifrados.
  Es decir: pueden cargar la página, no leer tu historial. Aun así, en una red
  compartida con desconocidos no lo dejes levantado.
- No registra ni envía nada a ningún sitio.

La app carga las tipografías desde Google Fonts. **Sin internet funciona igual**
y cae a las tipografías del sistema; solo cambia el aspecto ligeramente.
