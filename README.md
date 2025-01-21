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
1. docker-compose logs -f HSM-BE-GATEWAY-MS
1. docker-compose --env-file ./envs/global.env build HSM-BE-GATEWAY-MS
1. docker-compose --env-file ./envs/global.env up -d HSM-BE-GATEWAY-MS

# Auth Service
1. docker-compose logs -f HSM-BE-AUTH-MS
1. docker-compose --env-file ./envs/global.env build HSM-BE-AUTH-MS
1. docker-compose --env-file ./envs/global.env up -d HSM-BE-AUTH-MS

# Coms Service
1. docker-compose logs -f HSM-BE-COMS-MS
1. docker-compose --env-file ./envs/global.env build HSM-BE-COMS-MS
1. docker-compose --env-file ./envs/global.env up -d HSM-BE-COMS-MS

# Examenes Service
1. docker-compose logs -f HSM-BE-EXAMENES-MS
1. docker-compose --env-file ./envs/global.env build HSM-BE-EXAMENES-MS
1. docker-compose --env-file ./envs/global.env up -d HSM-BE-EXAMENES-MS

# Facturacion Service
1. docker-compose logs -f HSM-BE-FACTURACION-MS
1. docker-compose --env-file ./envs/global.env build HSM-BE-FACTURACION-MS
1. docker-compose --env-file ./envs/global.env up -d HSM-BE-FACTURACION-MS

# Farmacia Service
1. docker-compose logs -f HSM-BE-FARMACIA-MS
1. docker-compose --env-file ./envs/global.env build HSM-BE-FARMACIA-MS
1. docker-compose --env-file ./envs/global.env up -d HSM-BE-FARMACIA-MS

# Hospitalizacion Service
1. docker-compose logs -f HSM-BE-HOSPITALIZACION-MS
1. docker-compose --env-file ./envs/global.env build HSM-BE-HOSPITALIZACION-MS
1. docker-compose --env-file ./envs/global.env up -d HSM-BE-HOSPITALIZACION-MS

# Medicos Service
1. docker-compose logs -f HSM-BE-MEDICOS-MS
1. docker-compose --env-file ./envs/global.env build HSM-BE-MEDICOS-MS
1. docker-compose --env-file ./envs/global.env up -d HSM-BE-MEDICOS-MS

# Pacientes Service
1. docker-compose logs -f HSM-BE-PACIENTES-MS
1. docker-compose --env-file ./envs/global.env build HSM-BE-PACIENTES-MS
1. docker-compose --env-file ./envs/global.env up -d HSM-BE-PACIENTES-MS

# Personal Service
1. docker-compose logs -f HSM-BE-PERSONAL-MS
1. docker-compose --env-file ./envs/global.env build HSM-BE-PERSONAL-MS
1. docker-compose --env-file ./envs/global.env up -d HSM-BE-PERSONAL-MS

# Users Service
1. docker-compose logs -f HSM-BE-USERS-MS
1. docker-compose --env-file ./envs/global.env build HSM-BE-USERS-MS
1. docker-compose --env-file ./envs/global.env up -d HSM-BE-USERS-MS