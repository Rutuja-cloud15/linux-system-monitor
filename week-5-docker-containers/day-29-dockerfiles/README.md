# Day 29: Custom Dockerfile Development & Image Compilation

Today I transitioned from consuming pre-built hub images to writing native declarative blueprints (`Dockerfile`) to containerize a decoupled web application layer.

### Pipeline Implementation
* **Declarative Layering**: Built an immutable template originating from `ubuntu:22.04`, stripping out interactive frontends, and layering the `apache2` server engine.
* **Inline Injection**: Streamlined the building pipeline by systematically compiling application web layouts directly within the image build stage.
* **Process Enforcement**: Bound the execution routine to `/usr/sbin/apache2ctl` running in non-daemonized foreground mode (`-D FOREGROUND`), keeping the container runtime healthy and alive.
* **Ingress Networking**: Exposed containerized Port 80 and mapped it locally to Port 8080 for seamless external browser access.
