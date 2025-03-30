# Obtener la ruta de la carpeta desde el argumento pasado
$folderPath = $args[0]

# Obtener los nombres de las carpetas en la carpeta (solo nombres, sin rutas completas)
$folderNames = Get-ChildItem -Path $folderPath -Directory | ForEach-Object { $_.Name }

# Unir los nombres en una sola cadena, separados por saltos de línea
$folderList = $folderNames -join "`r`n"

# Copiar la lista al portapapeles
Set-Clipboard -Value $folderList