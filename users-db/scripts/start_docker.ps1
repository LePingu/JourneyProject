Push-Location $PSScriptRoot\..

Write-Host "Begin docker build"

docker build -t journey-project/users-db .

Write-Host "Build finished"
Write-Host "Image id is:" 
docker inspect --format="{{.Id}}" journey-project/users-db

start powershell {
    $Host.UI.RawUI.WindowTitle='Users PostGres'
    docker run -p 32776:5432 --name users_db journey-project/users-db
}

Pop-Location