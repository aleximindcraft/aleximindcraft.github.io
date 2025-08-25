# Ruta de las carpetas
$symlink = "G:\OBSIDIAN\aleximindcraft.github.io\content"
$destino = "G:\OBSIDIAN\aleximindcraft.github.io\content-git"

Write-Host "📂 Copiando notas desde $symlink a $destino..."

# Copia todo el contenido del symlink hacia content-git
robocopy $symlink $destino /MIR

# Ir a la carpeta del repo
Set-Location "G:\OBSIDIAN\aleximindcraft.github.io"

# Subir cambios a GitHub
git add .
git commit -m "update notes"
git push

Write-Host "✅ Sincronización completa. Presiona cualquier tecla para salir..."
Pause
