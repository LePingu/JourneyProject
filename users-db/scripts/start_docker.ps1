Write-Host "Begin docker build"

Push-Location .
docker build -t journey-project/users-db .
Pop-Location

Write-Host "Build finished"
Write-Host "Image id is:" 
docker inspect --format="{{.Id}}" journey-project/users-db

Start-Process

docker run --rm -P --name pg_test journey-project/users-db