Write-Host "Stopping Docker container"

docker stop logic-api
docker rm logic-api

Write-Host "Removed logic-api container"