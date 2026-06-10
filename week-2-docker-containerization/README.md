# Week 2: Docker Containerization Architecture

This section serves as a playbook for packaging apps, configuring networks, and persisting storage blocks.

## Docker Core Lifecycle Commands
 1. docker build -t app:v1 .
Compiles a `Dockerfile` into a static template.
Generates a read-only Docker Image.

 2. docker run -d -p 8080:80
Boots an image into the background while mapping ports.

 3. docker ps -a
Scans the system for active and stopped containers.

 4. docker rm -f
Forcefully deletes a container instantly.

## Storage & Orchestration Playbook
**Bind Mounts** 
-v $(pwd):/app
Local code changes sync **instantly** inside the running container.

**Docker Compose** 
docker compose up -d
Launches your frontend, backend, and DB layers simultaneously using one YAML file.

**System Hygiene** 
docker system prune -a
Deep cleans your laptop hard drive by erasing old, unused cached base images.
