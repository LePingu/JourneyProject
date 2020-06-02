#!/bin/sh

set -e
run_cmd="dotnet run --server.urls http://*:80"

until dotnet ef database update -c PersistedGrantDbContext; do
>&2 echo "SQL Server is starting up"
sleep 1
done

>&2 echo "SQL Server is up - executing command"
exec $run_cmd