# HS-KUBERNETES

## General Commands

### Docker Cleanup
To free up space and remove unused Docker objects, run the following commands:
1. `docker-compose down` – Stops and removes containers defined in the `docker-compose.yml` file.
2. `docker system prune` – Removes unused images, containers, networks, and build cache.
3. `docker volumes prune` – Deletes all unused Docker volumes.
4. `docker image prune` – Removes dangling (unused) images.
5. `docker network prune` – Deletes unused Docker networks.
6. `docker container prune` – Removes stopped containers.
7. `docker builder prune` – Clears unused build cache.

## Docker Compose

Docker Compose simplifies multi-container applications by defining services, networks, and volumes in a YAML file. Below are the most commonly used commands:

### Starting and Stopping Containers
- `docker-compose up --build` – Builds images before starting the containers.
- `docker-compose build` – Builds images without starting containers.
- `docker-compose up -d` – Starts containers in detached mode (background execution).
- `docker-compose up -d --no-build` – Starts containers without rebuilding images.
- `docker-compose stop` – Stops running containers without removing them.
- `docker-compose down` – Stops and removes all containers, networks, and volumes.

### Viewing and Managing Containers
- `docker-compose ps` – Lists all running containers in the Compose project.
- `docker-compose logs -f [SERVICE_NAME]` – Follows real-time logs of a service.
- `docker-compose exec [SERVICE_NAME] bash` – Opens a shell inside a running container.
- `docker-compose restart [SERVICE_NAME]` – Restarts a specific service.
- `docker-compose restart` – Restarts all services in the Compose file.

### Scaling Services
- `docker-compose up --scale [SERVICE_NAME]=3 -d` – Runs multiple instances of a service.

### Environment and Configuration
- `.env` file support – Docker Compose automatically reads environment variables from a `.env` file in the same directory.
- `docker-compose config` – Validates and displays the resolved `docker-compose.yml` file.

### Networking
- `docker network ls` – Lists all Docker networks.
- `docker network inspect [NETWORK_NAME]` – Displays details about a specific network.
- `docker-compose run --service-ports [SERVICE_NAME]` – Runs a service while exposing its ports.

### Volume Management
- `docker volume ls` – Lists all Docker volumes.
- `docker volume inspect [VOLUME_NAME]` – Shows details of a specific volume.

---

## Microservices Management

Each microservice follows the same set of commands:

### Template for Microservice Commands
Replace `[SERVICE_NAME]` with the actual service name:

1. **View logs:** `docker-compose logs -f [SERVICE_NAME]`
2. **Build:** `docker-compose build [SERVICE_NAME]`
3. **Start (with build):** `docker-compose up -d [SERVICE_NAME]`
4. **Start (without build):** `docker-compose up -d [SERVICE_NAME] --no-build`
5. **Deploy (production):** `docker-compose -f docker-compose.prod.yml up -d --no-deps [SERVICE_NAME]`
