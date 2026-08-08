@echo off
title Jarvis
rem Lanceur de l'assistant vocal. Se place dans le dossier du projet puis
rem demarre jarvis14.py via uv. Pas de git pull automatique : le code n'est mis
rem a jour qu'apres relecture (git fetch upstream, puis diff).
cd /d "%~dp0"
call "%~dp0resoudre_uv.bat"
"%UV%" run python jarvis14.py
echo.
echo Jarvis s'est arrete. Vous pouvez fermer cette fenetre.
pause
