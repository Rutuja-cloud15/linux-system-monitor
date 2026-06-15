#!/bin/bash

# Define the absolute path to yesterday's shared Docker volume folder
OUTPUT_DIR="$HOME/devops-workspace/linux-system-monitor/week-5-docker-containers/day-30-docker-volumes/shared-web"
OUTPUT_FILE="$OUTPUT_DIR/index.html"

# Make sure the directory exists just in case
mkdir -p "$OUTPUT_DIR"

echo "Gathering live system metrics..."

# Extract real-time metrics
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}')
MEM_FREE=$(free -m | awk 'NR==2 {print $4}')
MEM_TOTAL=$(free -m | awk 'NR==2 {print $2}')
CPU_LOAD=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

# Generate a gorgeous dashboard HTML page directly into the shared Docker folder
cat << EOF > "$OUTPUT_FILE"
<!DOCTYPE html>
<html>
<head>
    <title>Containerized System Monitor</title>
    <meta http-equiv="refresh" content="5">
    <style>
        body { font-family: 'Segoe UI', sans-serif; background: #0f172a; color: #f8fafc; text-align: center; padding-top: 50px; }
        .dashboard { background: #1e293b; max-width: 600px; margin: 0 auto; padding: 30px; border-radius: 12px; border: 2px solid #38bdf8; box-shadow: 0 4px 6px -1px rgba(0,0,0,0.5); }
        h1 { color: #38bdf8; margin-bottom: 5px; }
        .stat-box { display: flex; justify-content: space-between; background: #334155; padding: 15px; margin: 10px 0; border-radius: 6px; font-size: 1.1em; }
        .value { font-weight: bold; color: #34d399; }
        .pulse { font-size: 0.8em; color: #94a3b8; margin-top: 15px; }
    </style>
</head>
<body>
    <div class="dashboard">
        <h1>Live Containerized Monitor</h1>
        <p style="color: #94a3b8; margin-bottom: 30px;">Serving metrics dynamically via Docker Volume Mounts</p>
        
        <div class="stat-box">
            <span>CPU Utilization:</span>
            <span class="value">${CPU_LOAD}%</span>
        </div>
        <div class="stat-box">
            <span> Available Memory:</span>
            <span class="value">${MEM_FREE}MB / ${MEM_TOTAL}MB</span>
        </div>
        <div class="stat-box">
            <span>Disk Space Used:</span>
            <span class="value">${DISK_USAGE}</span>
        </div>
        
        <p class="pulse">Auto-refreshing every 5 seconds...</p>
    </div>
</body>
</html>
EOF

echo "Dashboard updated inside the Docker volume seamlessly!"
