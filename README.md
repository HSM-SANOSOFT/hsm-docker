# HS-KUBERNETES

# General

1. docker-compose down
1. docker system prune
1. docker volumes prune
1. docker image prune
1. docker network prune
1. docker container prune
1. docker builder prune

1. docker-compose --env-file ./envs/global.env up --build
2. docker-compose --env-file ./envs/global.env build
3. docker-compose --env-file ./envs/global.env up -d
4. docker-compose --env-file ./envs/global.env up -d --no-build

# Gateway Service
1. docker-compose logs -f gateway-service
1. docker-compose --env-file ./envs/global.env build gateway-service
1. docker-compose --env-file ./envs/global.env up -d gateway-service

# Auth Service
1. docker-compose logs -f auth-service
1. docker-compose --env-file ./envs/global.env build auth-service
1. docker-compose --env-file ./envs/global.env up -d auth-service

# Coms Service
1. docker-compose logs -f coms-service
1. docker-compose --env-file ./envs/global.env build  coms-service
1. docker-compose --env-file ./envs/global.env up -d coms-service

# Examenes Service
1. docker-compose logs -f examenes-service
1. docker-compose --env-file ./envs/global.env build examenes-service
1. docker-compose --env-file ./envs/global.env up -d examenes-service

# Facturacion Service
1. docker-compose logs -f facturacion-service
1. docker-compose --env-file ./envs/global.env build facturacion-service
1. docker-compose --env-file ./envs/global.env up -d facturacion-service

# Farmacia Service
1. docker-compose logs -f farmacia-service
1. docker-compose --env-file ./envs/global.env build farmacia-service
1. docker-compose --env-file ./envs/global.env up -d farmacia-service

# Hospitalizacion Service
1. docker-compose logs -f hospitalizacion-service
1. docker-compose --env-file ./envs/global.env build hospitalizacion-service
1. docker-compose --env-file ./envs/global.env up -d hospitalizacion-service

# Medicos Service
1. docker-compose logs -f medicos-service
1. docker-compose --env-file ./envs/global.env build medicos-service
1. docker-compose --env-file ./envs/global.env up -d medicos-service

# Pacientes Service
1. docker-compose logs -f pacientes-service
1. docker-compose --env-file ./envs/global.env build pacientes-service
1. docker-compose --env-file ./envs/global.env up -d pacientes-service

# Personal Service
1. docker-compose logs -f personal-service
1. docker-compose --env-file ./envs/global.env build personal-service
1. docker-compose --env-file ./envs/global.env up -d personal-service

# Users Service
1. docker-compose logs -f users-service
1. docker-compose --env-file ./envs/global.env build users-service
1. docker-compose --env-file ./envs/global.env up -d users-service