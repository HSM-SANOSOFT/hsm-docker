#General

docker-compose down
docker system prune
docker volumes prune
docker image prune
docker network prune
docker container prune
docker builder prune

docker-compose --env-file ./envs/global.env up --build
docker-compose --env-file ./envs/global.env build
docker-compose --env-file ./envs/global.env up -d

# Gateway Service
docker-compose logs -f gateway-service
docker-compose --env-file ./envs/global.env build gateway-service
docker-compose --env-file ./envs/global.env up -d gateway-service

# Auth Service
docker-compose logs -f auth-service
docker-compose --env-file ./envs/global.env build auth-service
docker-compose --env-file ./envs/global.env up -d auth-service

# Coms Service
docker-compose logs -f coms-service
docker-compose --env-file ./envs/global.env build  coms-service
docker-compose --env-file ./envs/global.env up -d coms-service

# Examenes Service
docker-compose logs -f examenes-service
docker-compose --env-file ./envs/global.env build examenes-service
docker-compose --env-file ./envs/global.env up -d examenes-service

# Facturacion Service
docker-compose logs -f facturacion-service
docker-compose --env-file ./envs/global.env build facturacion-service
docker-compose --env-file ./envs/global.env up -d facturacion-service

# Farmacia Service
docker-compose logs -f farmacia-service
docker-compose --env-file ./envs/global.env build farmacia-service
docker-compose --env-file ./envs/global.env up -d farmacia-service

# Hospitalizacion Service
docker-compose logs -f hospitalizacion-service
docker-compose --env-file ./envs/global.env build hospitalizacion-service
docker-compose --env-file ./envs/global.env up -d hospitalizacion-service

# Medicos Service
docker-compose logs -f medicos-service
docker-compose --env-file ./envs/global.env build medicos-service
docker-compose --env-file ./envs/global.env up -d medicos-service

# Pacientes Service
docker-compose logs -f pacientes-service
docker-compose --env-file ./envs/global.env build pacientes-service
docker-compose --env-file ./envs/global.env up -d pacientes-service

# Personal Service
docker-compose logs -f personal-service
docker-compose --env-file ./envs/global.env build personal-service
docker-compose --env-file ./envs/global.env up -d personal-service

# Users Service
docker-compose logs -f users-service
docker-compose --env-file ./envs/global.env build users-service
docker-compose --env-file ./envs/global.env up -d users-service