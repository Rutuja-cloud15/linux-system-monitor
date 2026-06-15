# Day 28: Introduction to Containerization & Docker Basics

Today I successfully shifted from manual environment management to containerized systems by deploying the Docker container engine inside WSL.

### Core Architecture Definitions
* **Docker Daemon (`dockerd`)**: The background system service running on the host OS that manages images, containers, networks, and storage volumes.
* **Image**: A read-only blueprint template containing the code, binaries, libraries, and exact environment configurations required to execute an application.
* **Container**: A live, isolated, stateful instance of an image running inside a secure kernel sandbox.

### 🛠xecution & Verification
Installed the Docker engine via the official repository script and successfully ran the standard verification routine:
`curl -fsSL https://get-docker.com -o get-docker.sh`

`sudo sh get-docker.sh`

`sudo systemctl start docker`
`sudo systemctl enable docker`

`sudo docker run hello-world`
