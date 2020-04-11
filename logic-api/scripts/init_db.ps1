$ipaddress = 127.0.0.1
$port = 32776
$connection = New-Object System.Net.Sockets.TcpClient($ipaddress, $port)
$ErrorActionPreference = "Stop"
if ($connection.Connected) {
    Write-Host "Port is Open"
    Write-Host "Updating Db"
    dotnet ef database update -c PersistedGrantDbContext
    dotnet ef database update -c ConfigurationDbContext
}
else {
    Write-Host "Port is closed, please Start the PostGresql container before continuing"
}