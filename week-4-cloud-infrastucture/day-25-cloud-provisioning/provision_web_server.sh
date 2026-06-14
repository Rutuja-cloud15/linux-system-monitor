#!/bin/bash

# ==================================================
# DevOps Portfolio - Day 25: Automated Cloud Web Server Provisioner
# =============================================

echo "Starting Automated Server Provisioning..."

#1. Update the operating system package registries
echo "Updating system package repositories..."
sudo apt-get update -y

#2. Install Apache2 Web Server Cleanly
echo "Installing Apache2 Web Server..."
sudo apt-get install apache2 -y

#3. Start and enable the web server daemon so it boots automatically
echo "Starting Apache Service..."
sudo systemctl start apache2
sudo systemctl enable apache2

#4. Inject a custom DevOps deployment page into the root web index
echo "Deploying custom landing page..."
sudo tee /var/www/html/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Cloud Server Live!</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background: #0f172a; color: #f8fafc; text-align: center; padding-top: 100px; }
        .card { background: #1e293b; max-width: 600px; margin: 0 auto; padding: 40px; border-radius: 12px; box-shadow: 0 10px 15px -3px rgba(0,0,0,0.5); border: 2px solid #3b82f6; }
        h1 { color: #3b82f6; margin-bottom: 10px; }
        p { color: #94a3b8; font-size: 18px; }
        .status { display: inline-block; background: #22c55e; color: white; padding: 6px 16px; border-radius: 20px; font-weight: bold; margin-top: 20px; }
    </style>
</head>
<body>
    <div class="card">
        <h1>☁️ AWS EC2 Instance Live</h1>
        <p>Automated Provisioning Successful via Bash Scripting.</p>
        <div class="status">🔥 DAY 25 COMPLETE</div>
    </div>
</body>
</html>
EOF

echo "Provisioning complete! Your web server is broadcasting live."
