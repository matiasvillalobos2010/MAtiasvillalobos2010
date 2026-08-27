#!/usr/bin/env node
/* Cuaderno de baloncesto — servidor local.
 *
 * Sin dependencias: solo módulos internos de Node. No hay `npm install`.
 * Sirve los archivos de la carpeta superior (06-app) en la red local.
 *
 * Uso:  node servidor.js [puerto]
 */
'use strict';
const http = require('http');
const fs   = require('fs');
const path = require('path');
const os   = require('os');

const PUERTO = Number(process.argv[2] || process.env.PORT || 8080);
const RAIZ   = path.resolve(__dirname, '..');
const INICIO = 'app.html';

const TIPOS = {
  '.html':'text/html; charset=utf-8', '.js':'text/javascript; charset=utf-8',
  '.css':'text/css; charset=utf-8',   '.json':'application/json; charset=utf-8',
  '.md':'text/plain; charset=utf-8',  '.svg':'image/svg+xml',
  '.png':'image/png', '.jpg':'image/jpeg', '.jpeg':'image/jpeg',
  '.gif':'image/gif', '.webp':'image/webp', '.ico':'image/x-icon',
  '.woff':'font/woff', '.woff2':'font/woff2', '.mp4':'video/mp4'
};

/* Todas las IPv4 de la máquina, para que el móvil sepa a dónde conectarse. */
function direcciones() {
  const out = [];
  for (const [nombre, lista] of Object.entries(os.networkInterfaces() || {})) {
    for (const i of lista || []) {
      if (i.family === 'IPv4' && !i.internal) out.push([nombre, i.address]);
    }
  }
  return out;
}

const server = http.createServer((req, res) => {
  let ruta;
  try { ruta = decodeURIComponent(new URL(req.url, 'http://x').pathname); }
  catch { res.writeHead(400); return res.end('Petición mal formada'); }

  if (ruta === '/' || ruta === '') ruta = '/' + INICIO;

  // Normalizamos y comprobamos que no se sale de RAIZ (evita ../../etc/passwd).
  const destino = path.resolve(RAIZ, '.' + ruta);
  if (destino !== RAIZ && !destino.startsWith(RAIZ + path.sep)) {
    res.writeHead(403, {'Content-Type':'text/plain; charset=utf-8'});
    return res.end('Fuera de la carpeta servida');
  }

  fs.stat(destino, (err, st) => {
    if (err || !st.isFile()) {
      res.writeHead(404, {'Content-Type':'text/plain; charset=utf-8'});
      return res.end('No existe: ' + ruta);
    }
    const tipo = TIPOS[path.extname(destino).toLowerCase()] || 'application/octet-stream';
    // app.html es grande (~3,5 MB): con ETag el navegador solo lo baja una vez.
    const etag = '"' + st.size.toString(16) + '-' + st.mtimeMs.toString(16) + '"';
    if (req.headers['if-none-match'] === etag) { res.writeHead(304); return res.end(); }

    const cab = {'Content-Type':tipo, 'Content-Length':st.size, 'ETag':etag,
                 'Cache-Control':'no-cache'};
    if (req.method === 'HEAD') { res.writeHead(200, cab); return res.end(); }
    res.writeHead(200, cab);
    fs.createReadStream(destino).pipe(res);
  });
});

server.on('error', e => {
  if (e.code === 'EADDRINUSE') {
    console.error(`\n  El puerto ${PUERTO} ya está ocupado.`);
    console.error(`  Prueba con otro:  node servidor.js 8081\n`);
  } else {
    console.error('\n  Error al arrancar:', e.message, '\n');
  }
  process.exit(1);
});

// 0.0.0.0 = escucha también en la red local, no solo en este equipo.
server.listen(PUERTO, '0.0.0.0', () => {
  const ips = direcciones();
  console.log('\n  Cuaderno de baloncesto — servidor local');
  console.log('  ' + '-'.repeat(46));
  console.log(`  En este equipo:   http://localhost:${PUERTO}/`);
  if (ips.length) {
    console.log('  Desde el móvil o la tablet (misma wifi):');
    for (const [nombre, ip] of ips) console.log(`      http://${ip}:${PUERTO}/   (${nombre})`);
  } else {
    console.log('  No se detectó ninguna IP de red local: solo localhost.');
  }
  console.log('  ' + '-'.repeat(46));
  console.log(`  Carpeta servida:  ${RAIZ}`);
  console.log('  Para parar:       Ctrl+C\n');
});

for (const s of ['SIGINT','SIGTERM']) {
  process.on(s, () => { console.log('\n  Servidor detenido.\n'); process.exit(0); });
}
