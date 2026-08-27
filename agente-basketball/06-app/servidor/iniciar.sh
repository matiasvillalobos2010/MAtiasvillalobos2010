#!/usr/bin/env bash
# Cuaderno de baloncesto — arranque en macOS y Linux.
# Doble clic o:  ./iniciar.sh [puerto]
set -u
cd "$(dirname "$0")"
PUERTO="${1:-8080}"

echo
echo "  Cuaderno de baloncesto — comprobando el equipo"
echo "  ----------------------------------------------"

if [ ! -f servidor.js ]; then
  echo "  [X] No encuentro servidor.js en esta carpeta."
  echo "      Descomprime el zip de verdad antes de ejecutar esto."
  exit 1
fi
if [ ! -f ../app.html ]; then
  echo "  [X] Encuentro servidor.js pero no ../app.html"
  echo "      Falta la carpeta de la app. Vuelve a descomprimir el zip entero."
  exit 1
fi
echo "  [ok] Archivos de la app encontrados."

if command -v node >/dev/null 2>&1; then
  echo "  [ok] Motor disponible: node"; echo
  exec node servidor.js "$PUERTO"
elif command -v python3 >/dev/null 2>&1; then
  echo "  [ok] Motor disponible: python3 (Node no está instalado)"; echo
  exec python3 servidor.py "$PUERTO"
fi

echo "  [X] No hay ni Node ni Python 3 instalados."
echo
echo "  OPCIÓN RÁPIDA, sin instalar nada:"
echo "    abre ../app.html con doble clic. Funciona entera, con la base"
echo "    de datos. Solo pierdes el acceso desde el móvil."
echo
echo "  OPCIÓN COMPLETA, para usarla desde el móvil:"
echo "    Node   -> https://nodejs.org  (versión LTS)"
echo "    Python -> https://www.python.org/downloads/"
echo
exit 1
