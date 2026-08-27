#!/usr/bin/env bash
cd "$(dirname "$0")"
A="06-app/app.html"
if command -v xdg-open >/dev/null 2>&1; then xdg-open "$A"
elif command -v open >/dev/null 2>&1; then open "$A"
else echo "Abre a mano: $PWD/$A"; fi
