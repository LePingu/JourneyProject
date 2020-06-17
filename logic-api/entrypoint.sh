#!/bin/sh

set -e

until dotnet ef database update -c ConfigurationDbContext; do
>&2 echo "Configuration db is building up"
sleep 1
done

until dotnet ef database update -c PersistedGrantDbContext; do
>&2 echo "Persisted Grant config is building up"
sleep 1
done

>&2 echo "SQL Server is up - executing command"
dotnet run ./src/logic-api/logic-api.csproj