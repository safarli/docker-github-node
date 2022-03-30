docker stop nodeapp
docker-compose -f compose.yml up --build --force-recreate -d && docker ps

for P in {1..3}; do echo 'HELLOO WORLD'; done