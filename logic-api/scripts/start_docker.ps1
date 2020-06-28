Push-Location $PSScriptRoot/..

Write-Host "Begin docker build"

docker build -t journey-project/logic-api .

Write-Host "Build finished"
Write-Host "Image id is:" 
docker inspect --format="{{.Id}}" journey-project/logic-api

docker run --name logic-api -p 5000:80 -d journey-project/logic-api

Pop-Location