#!/bin/bash

echo "Custom DevOps Container Booting Up..."

# Generate a basic HTML page inside the container's web directory
cat << EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>Containerized App Live!</title>
    <style>
        body { font-family: sans-serif; background: #020617; color: #f8fafc; text-align: center; padding-top: 100px; }
        .box { background: #0f172a; max-width: 500px; margin: 0 auto; padding: 30px; border-radius: 8px; border: 1px solid #06b6d4; }
        h1 { color: #06b6d4; }
    </style>
</head>
<body>
    <div class="box">
        <h1>Hello From Inside Docker!</h1>
        <p>This application is completely containerized.</p>
        <p style="color: #64748b;">Day 29 Pipeline Working Perfectly.</p>
    </div>
</body>
</html>
EOF

echo " Launching Apache Web Server in the foreground..."
# Start Apache in the foreground so the container stays alive and active
source /etc/apache2/envvars
exec apache2 -DFOREGROUND
