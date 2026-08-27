#!/usr/bin/env python3
"""Cuaderno de baloncesto — servidor local (alternativa sin Node).

Solo biblioteca estándar de Python 3. No hay que instalar nada.

Uso:  python3 servidor.py [puerto]
"""
import http.server
import os
import socket
import socketserver
import sys

PUERTO = int(sys.argv[1] if len(sys.argv) > 1 else os.environ.get("PORT", 8080))
RAIZ = os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
INICIO = "app.html"


class Handler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *a, **kw):
        super().__init__(*a, directory=RAIZ, **kw)

    def do_GET(self):
        if self.path in ("/", ""):
            self.path = "/" + INICIO
        return super().do_GET()

    def end_headers(self):
        self.send_header("Cache-Control", "no-cache")
        super().end_headers()

    def log_message(self, fmt, *args):
        # Silencia el log línea a línea; solo interesa que funcione.
        pass


def direcciones():
    """IPv4 de esta máquina en la red local."""
    ips = set()
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        s.connect(("8.8.8.8", 80))  # no envía nada, solo elige la interfaz de salida
        ips.add(s.getsockname()[0])
        s.close()
    except OSError:
        pass
    try:
        for info in socket.getaddrinfo(socket.gethostname(), None, socket.AF_INET):
            ip = info[4][0]
            if not ip.startswith("127."):
                ips.add(ip)
    except OSError:
        pass
    return sorted(ips)


class Servidor(socketserver.ThreadingTCPServer):
    allow_reuse_address = True
    daemon_threads = True


if __name__ == "__main__":
    try:
        srv = Servidor(("0.0.0.0", PUERTO), Handler)
    except OSError as e:
        print(f"\n  No se pudo abrir el puerto {PUERTO}: {e}")
        print("  Prueba con otro:  python3 servidor.py 8081\n")
        sys.exit(1)

    print("\n  Cuaderno de baloncesto — servidor local")
    print("  " + "-" * 46)
    print(f"  En este equipo:   http://localhost:{PUERTO}/")
    ips = direcciones()
    if ips:
        print("  Desde el móvil o la tablet (misma wifi):")
        for ip in ips:
            print(f"      http://{ip}:{PUERTO}/")
    else:
        print("  No se detectó ninguna IP de red local: solo localhost.")
    print("  " + "-" * 46)
    print(f"  Carpeta servida:  {RAIZ}")
    print("  Para parar:       Ctrl+C\n")

    try:
        srv.serve_forever()
    except KeyboardInterrupt:
        print("\n  Servidor detenido.\n")
