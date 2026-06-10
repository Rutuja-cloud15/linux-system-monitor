#!/bin/bash

alert_user() {
    echo "[$1 ALERT]: $2"
}
echo "========================================"
docker info > /dev/null 2>&1
if [ $? -ne 0 ]; then
    alert_user "CRITICAL" "Docker daemon is offline!"
    exit 1
fi
echo " Docker status: Connected & Healthy."
echo "========================================"
