docker stop nodeapp
docker-compose -f compose.yml up --build --force-recreate -d && docker ps