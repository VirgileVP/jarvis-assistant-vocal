@echo off
rem Resout le chemin de uv et le place dans la variable %UV%.
rem Appele par les autres lanceurs (call resoudre_uv.bat) : ils ont besoin d'un
rem chemin fiable meme au demarrage de Windows, ou le PATH peut differer.
rem Ordre : installeur officiel, puis pip install --user, puis PATH.
set "UV=%USERPROFILE%\.local\bin\uv.exe"
if not exist "%UV%" set "UV=%APPDATA%\Python\Python310\Scripts\uv.exe"
where uv >nul 2>nul && set "UV=uv"
if not exist "%UV%" if not "%UV%"=="uv" (
    echo uv est introuvable. Installe-le : python -m pip install --user uv
    exit /b 1
)
exit /b 0
