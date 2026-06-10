#!/bin/bash

RUNNING_CONTAINERS=$(docker ps --format "{{.Names}}")

echo "========================================"
if [ -z "$RUNNING_CONTAINERS" ]; then
    echo "No running containers found."
else
    for CONTAINER in $RUNNING_CONTAINERS; do
        STATUS=$(docker inspect --format='{{.State.Status}}' $CONTAINER)
        echo " Container: [$CONTAINER] -> Status: $STATUS"
    done
fi
echo "========================================"
