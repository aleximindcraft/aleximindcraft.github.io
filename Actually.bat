@echo off
title Sincronizador de Notas - Alexi.rar
set "REPOROOT=G:\OBSIDIAN\aleximindcraft.github.io"
set "ORIGEN=%REPOROOT%\content"
set "DESTINO=%REPOROOT%\content-git"

echo 📂 Espejeando notas de Obsidian...
:: /MIR hace que el destino sea IDENTICO al origen. /NFL /NDL es para que no te llene la pantalla de basura.
robocopy "%ORIGEN%" "%DESTINO%" /MIR /NFL /NDL /NJH /NJS

echo 🚀 Entrando al repositorio...
cd /d "%REPOROOT%"

echo 📦 Preparando cambios para GitHub...
git add .
git commit -m "update notes %date% %time%"
git push origin main

echo.
echo ✅ ¡Listo! Cloudflare esta compilando tu sitio ahora mismo.
pause