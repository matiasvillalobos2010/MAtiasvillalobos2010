@echo off
REM Arranca el servidor local desde la raiz del proyecto.
cd /d "%~dp0"
call "06-app\servidor\iniciar.bat" %1
