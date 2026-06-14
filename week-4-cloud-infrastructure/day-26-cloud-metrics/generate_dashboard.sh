#!/bin/bash

# ====================================================================
# DevOps Portfolio - Day 26: Live Cloud Metrics Dashboard Generator
# ====================================================================

echo "Gathering live cloud server metrics..."

# 1. Collect System Stats
IP_ADDR=$(hostname -I | awk '{print $1}')
UPTIME_DATA=$(uptime -p)
CPU_LOAD=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')

# 2. Collect Memory Stats (using parsing logic from Week 2)
MEM_TOTAL=$(free -m | awk '/Mem:/ {print $2}')
MEM_USED=$(free -m | awk '/Mem:/ {print $3}')
MEM_PERC=$(free | awk '/Mem:/ {printf "%.1f%%", $3/$2*100}')

# 3. Collect Disk Storage Stats
DISK_TOTAL=$(df -h / | awk 'NR==2 {print $2}')
DISK_USED=$(df -h / | awk 'NR==2 {print $3}')
DISK_PERC=$(df -h / | awk 'NR==2 {print $5}')

# 4. Generate the Live HTML Dashboard
cat << EOF | sudo tee /var/www/html/index.html > /dev/null
<!DOCTYPE html>
<html>
<head>
    <title>DevOps Cloud Dashboard</title>
    <meta http-equiv="refresh" content="5"> <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background: #0f172a; color: #f8fafc; margin: 0; padding: 40px; }
        .container { max-width: 900px; margin: 0 auto; }
        h1 { color: #3b82f6; text-align: center; margin-bottom: 30px; }
        .meta-info { text-align: center; color: #64748b; margin-bottom: 40px; font-size: 14px; }
        .grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; }
        .card { background: #1e293b; padding: 25px; border-radius: 12px; border: 1px solid #334155; text-align: center; }
        .card h3 { margin: 0 0 15px 0; color: #94a3b8; font-size: 16px; text-transform: uppercase; }
        .metric { font-size: 32px; font-weight: bold; color: #f8fafc; margin-bottom: 10px; }
        .cpu { color: #3b82f6; }
        .ram { color: #a855f7; }
        .disk { color: #eab308; }
        .details { font-size: 12px; color: #64748b; }
    </style>
</head>
<body>
    <div class="container">
        <h1> Live Cloud System Monitor</h1>
        <div class="meta-info">
            <strong>Server IP:</strong> $IP_ADDR &nbsp;|&nbsp; <strong>Uptime:</strong> $UPTIME_DATA
        </div>
        
        <div class="grid">
            <div class="card">
                <h3>CPU Utilization</h3>
                <div class="metric cpu">$CPU_LOAD</div>
                <div class="details">Active Processor Load</div>
            </div>
            
            <div class="card">
                <h3>Memory (RAM)</h3>
                <div class="metric ram">$MEM_PERC</div>
                <div class="details">Used: ${MEM_USED}MB / ${MEM_TOTAL}MB</div>
            </div>
            
            <div class="card">
                <h3>Disk Storage</h3>
                <div class="metric disk">$DISK_PERC</div>
                <div class="details">Used: ${DISK_USED} / ${DISK_TOTAL}</div>
            </div>
        </div>
    </div>
</body>
</html>
EOF

echo "Dashboard updated with live metrics successfully!"
