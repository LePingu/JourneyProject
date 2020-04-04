Write-Host "Stopping Docker container"

docker stop pg_test
docker rm pg_test

Write-Host "Removed postgres container"