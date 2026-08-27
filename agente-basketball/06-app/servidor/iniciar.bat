@echo off
REM Cuaderno de baloncesto - arranque en Windows.
REM Doble clic, o desde la consola:  iniciar.bat 8080
setlocal
cd /d "%~dp0"
set PUERTO=%1
if "%PUERTO%"=="" set PUERTO=8080

echo.
echo   Cuaderno de baloncesto - comprobando el equipo
echo   ----------------------------------------------

REM Comprobacion 1: estan los archivos donde deben estar.
if not exist "servidor.js" (
  echo   [X] No encuentro servidor.js en esta carpeta.
  echo.
  echo   Casi seguro que estas ejecutando el .bat desde DENTRO del zip.
  echo   Windows deja abrir el zip como si fuera una carpeta, pero los
  echo   archivos no existen todavia en el disco.
  echo.
  echo   Descomprimelo de verdad: clic derecho en el zip
  echo   -^> "Extraer todo..." -^> y ejecuta el .bat desde la carpeta extraida.
  goto :parar
)
if not exist "..\app.html" (
  echo   [X] Encuentro servidor.js pero no ..\app.html
  echo   Falta la carpeta de la app. Vuelve a descomprimir el zip entero.
  goto :parar
)
echo   [ok] Archivos de la app encontrados.

REM Comprobacion 2: hay con que ejecutarlo.
set MOTOR=
where node >nul 2>nul
if %ERRORLEVEL%==0 set MOTOR=node
if defined MOTOR goto :hay_motor

where python >nul 2>nul
if %ERRORLEVEL%==0 set MOTOR=python
if defined MOTOR goto :hay_motor

where py >nul 2>nul
if %ERRORLEVEL%==0 set MOTOR=py

:hay_motor
if not defined MOTOR (
  echo   [X] No hay ni Node ni Python instalados.
  echo.
  echo   OPCION RAPIDA, sin instalar nada:
  echo     abre el archivo app.html de la carpeta de arriba con doble clic.
  echo     Funciona entera, con la base de datos. Solo pierdes el movil.
  echo.
  echo   OPCION COMPLETA, para usarla desde el movil:
  echo     instala Node desde https://nodejs.org  ^(version LTS^)
  echo     y vuelve a ejecutar este archivo.
  goto :parar
)
echo   [ok] Motor disponible: %MOTOR%
echo.

if "%MOTOR%"=="node" (
  node servidor.js %PUERTO%
) else (
  echo   Node no esta instalado; uso Python.
  %MOTOR% servidor.py %PUERTO%
)

echo.
echo   ----------------------------------------------
echo   El servidor se ha detenido.
echo.
echo   Si se paro solo nada mas arrancar, lo habitual es que el
echo   puerto %PUERTO% este ocupado. Prueba con otro abriendo una
echo   consola en esta carpeta y escribiendo:   iniciar.bat 8081

:parar
echo.
echo   ----------------------------------------------
echo   Esta ventana se queda abierta a proposito, para que puedas
echo   leer lo de arriba. Pulsa una tecla para cerrarla.
pause >nul
endlocal
