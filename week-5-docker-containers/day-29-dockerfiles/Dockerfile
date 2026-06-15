# 1. Start with standard Ubuntu
FROM ubuntu:22.04

# 2. Prevent installation pauses
ENV DEBIAN_FRONTEND=noninteractive

# 3. Install Apache web server
RUN apt-get update && apt-get install -y apache2 && rm -rf /var/lib/apt/lists/*

# 4. Create our custom HTML page directly inside the image
RUN echo '<!DOCTYPE html><html><head><title>Containerized App Live!</title><style>body { font-family: sans-serif; background: #020617; color: #f8fafc; text-align: center; padding-top: 100px; } .box { background: #0f172a; max-width: 500px; margin: 0 auto; padding: 30px; border-radius: 8px; border: 1px solid #06b6d4; } h1 { color: #06b6d4; }</style></head><body><div class="box"><h1>🐋 Hello From Inside Docker!</h1><p>This application is completely containerized.</p><p style="color: #64748b;">Day 29 Standalone Pipeline Working!</p></div></body></html>' > /var/www/html/index.html

# 5. Tell Docker to look at port 80
EXPOSE 80

# 6. Run Apache cleanly in the foreground when the container boots
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
