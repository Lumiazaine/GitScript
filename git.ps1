# Variables
$enlace = Read-Host -Prompt "Inserta el enlace"
$name = Read-Host -Prompt "Inserta el nombre de usuario"
$email = Read-Host -Prompt "Inserta el correo electrónico"
$nrama = Read-Host -Prompt "Inserta el nombre para la rama"


# Configuración usuario y correo git

$username = "git config --global user.name $name" 
Invoke-Expression -Command:$username

$usermail = "git config --global user.email $email"
Invoke-Expression -Command:$usermail


# Crear rama git

$ramanueva = "git checkout -b $nrama"
git branch $nrama
Invoke-Expression -Command:$ramanueva


# Inicializar rama git.

git init

git add .

git commit -m "first commit"

$Comando = "git remote add origin $enlace" 

Invoke-Expression -Command:$Comando

git push -u origin main