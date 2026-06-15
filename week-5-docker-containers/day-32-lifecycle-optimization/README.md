# Day 32: Container Runtime Lifecycle Management & Resource Auditing

Today I mastered container lifecycle operations, runtime process interrogation, and automated engine garbage collection.

###Core Optimization Commands
* **Resource Auditing**: Used `sudo docker stats` to calculate isolated container memory metrics and CPU process footprints.
* **Runtime Execution**: Leveraged `docker exec -it [container] /bin/bash` to open an active interactive session inside the isolated container kernel layer.
* **Garbage Collection**: Implemented `sudo docker system prune -a --volumes` to systematically destroy orphaned cache layers, dangling images, and inactive storage states, protecting storage infrastructure boundaries.
