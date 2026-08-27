#!/usr/bin/env bash
# Cuaderno de baloncesto — arranque en macOS y Linux.
# Doble clic o:  ./iniciar.sh [puerto]
set -u
cd "$(dirname "$0")"
PUERTO="${1:-8080}"

if command -v node >/dev/null 2>&1; then
  exec node servidor.js "$PUERTO"
elif command -v python3 >/dev/null 2>&1; then
  echo "  Node no está instalado; uso Python."
  exec python3 servidor.py "$PUERTO"
else
  echo
  echo "  No encuentro ni Node ni Python 3 en este equipo."
  echo "  Instala uno de los dos:"
  echo "    Node   -> https://nodejs.org  (versión LTS)"
  echo "    Python -> https://www.python.org/downloads/"
  echo
  echo "  Mientras tanto puedes abrir ../app.html directamente en el navegador:"
  echo "  funciona igual, pero solo en este equipo, no desde el móvil."
  echo
  exit 1
fi
