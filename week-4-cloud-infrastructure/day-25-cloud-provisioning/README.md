# Day 25: Automated Remote Server Provisioning

Today, I shifted from manual remote management to true infrastructure provisioning by writing a custom shell script to turn a raw AWS EC2 instance into a fully functioning web hosting platform.

### What My Provisioning Engine Automated:
1. **Repository Synchronization**: Cleaned and refreshed system packages using `apt-get update`.
2. **Daemon Deployment**: Installed and initialized the enterprise `apache2` web server engine.
3. **Process Management**: Linked the Apache service to the system boot sequence via `systemctl enable`.
4. **Content Invalidation**: Dynamically rewrote the default landing portal with a custom-built, modern HTML web design dashboard.

### Infrastructure Networking Security
Modified the active AWS Security Group to append a stateful rule allowing inbound transit on **Port 80 (HTTP)** from `0.0.0.0/0` (Anywhere), revealing the local apache server instance to the public web browser space.
