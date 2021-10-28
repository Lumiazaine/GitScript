
$enlace = Read-Host -Prompt "Inserta el enlace"


git init

git add .

git commit -m "first commit"

$Comando = "git remote add origin $enlace" 

Invoke-Expression -Command:$Comando

git push -u origin master