# HS-KUBERNETES

## Comandos Generales

### Limpieza de Docker
Para liberar espacio y eliminar objetos no utilizados en Docker, ejecuta los siguientes comandos:
1. `docker-compose down` – Detiene y elimina los contenedores definidos en `docker-compose.yml`.
2. `docker system prune` – Elimina imágenes, contenedores, redes y caché de compilación no utilizados.
3. `docker volumes prune` – Borra todos los volúmenes de Docker no utilizados.
4. `docker image prune` – Elimina imágenes no utilizadas (dangling images).
5. `docker network prune` – Borra redes de Docker no utilizadas.
6. `docker container prune` – Elimina contenedores detenidos.
7. `docker builder prune` – Limpia la caché de compilación no utilizada.

## Docker Compose

Docker Compose simplifica la gestión de aplicaciones multi-contenedor mediante la definición de servicios, redes y volúmenes en un archivo YAML. A continuación, se presentan los comandos más utilizados:

### Inicio y detención de contenedores
- `docker-compose up --build` – Construye las imágenes antes de iniciar los contenedores.
- `docker-compose build` – Construye las imágenes sin iniciar los contenedores.
- `docker-compose up -d` – Inicia los contenedores en modo desacoplado (background).
- `docker-compose up -d --no-build` – Inicia los contenedores sin reconstruir las imágenes.
- `docker-compose stop` – Detiene los contenedores en ejecución sin eliminarlos.
- `docker-compose down` – Detiene y elimina todos los contenedores, redes y volúmenes.

### Visualización y gestión de contenedores
- `docker-compose ps` – Lista todos los contenedores en ejecución del proyecto Compose.
- `docker-compose logs -f [NOMBRE_DEL_SERVICIO]` – Muestra los logs en tiempo real de un servicio específico.
- `docker-compose exec [NOMBRE_DEL_SERVICIO] bash` – Abre una terminal dentro de un contenedor en ejecución.
- `docker-compose restart [NOMBRE_DEL_SERVICIO]` – Reinicia un servicio específico.
- `docker-compose restart` – Reinicia todos los servicios definidos en el archivo Compose.

### Escalado de servicios
- `docker-compose up --scale [NOMBRE_DEL_SERVICIO]=3 -d` – Ejecuta múltiples instancias de un servicio.

### Gestión de entorno y configuración
- **Archivo `.env`** – Docker Compose lee automáticamente las variables de entorno desde un archivo `.env` en el mismo directorio.

- `docker-compose config` – Valida y muestra el contenido resuelto de `docker-compose.yml`.

### Redes
- `docker network ls` – Lista todas las redes de Docker.
- `docker network inspect [NOMBRE_RED]` – Muestra detalles sobre una red específica.
- `docker-compose run --service-ports [NOMBRE_DEL_SERVICIO]` – Ejecuta un servicio exponiendo sus puertos.

### Gestión de volúmenes
- `docker volume ls` – Lista todos los volúmenes de Docker.

- `docker volume inspect [NOMBRE_DEL_VOLUMEN]` – Muestra detalles de un volumen específico.

---

## Gestión de Microservicios

Cada microservicio sigue el mismo conjunto de comandos:

### Plantilla para Comandos de Microservicio
Reemplaza `[NOMBRE_DEL_SERVICIO]` con el nombre real del servicio:

1. **Ver logs:** `docker-compose logs -f [NOMBRE_DEL_SERVICIO]`
2. **Construir imagen:** `docker-compose build [NOMBRE_DEL_SERVICIO]`
3. **Iniciar (con construcción):** `docker-compose up -d [NOMBRE_DEL_SERVICIO]`
4. **Iniciar (sin construcción):** `docker-compose up -d [NOMBRE_DEL_SERVICIO] --no-build`
5. **Desplegar en producción:** `docker-compose -f docker-compose.prod.yml up -d --no-deps [NOMBRE_DEL_SERVICIO]`

---

Este documento sirve como una guía para gestionar microservicios en un entorno Dockerizado utilizando Docker Compose. Ajusta los nombres de los servicios y las configuraciones según sea necesario.
