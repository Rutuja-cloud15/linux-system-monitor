#!/bin/bash

STOPPED_COUNT=$(docker ps -a -f "status=exited" -q | wc -l)

echo "========================================"
echo " Found $STOPPED_COUNT stopped containers."
if [ "$STOPPED_COUNT" -gt 0 ]; then
    docker system prune -f
else
    echo " Your system is already clean!"
fi
echo "========================================"
