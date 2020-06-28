Push-Location $PSScriptRoot\..

Write-Host "Begin docker compose build"

docker-compose build

Write-Host "Build finished"

Write-Host "Running Project" 

docker-compose up

Pop-Location