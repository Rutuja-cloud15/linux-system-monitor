#!/bin/bash

# ====================================================================
# DevOps Automation Script v5: Automated Git Sync Engine
# ====================================================================

echo "========================================"
echo "STARTING AUTOMATED REPOSITORY SYNC"
echo "========================================"

# 1. Generate a dynamic timestamped commit message
CURRENT_TIME=$(date "+%Y-%m-%d %H:%M:%S")
COMMIT_MSG="Auto-sync backup execution: $CURRENT_TIME"

echo "Staging all workspace alterations..."
git add .

# 2. Check if there are actually any changes to commit
if git diff-index --quiet HEAD --; then
    echo "Clean workspace! No adjustments found to sync."
    echo "========================================"
    exit 0
fi

echo "Processing automated commit layout..."
git commit -m "$COMMIT_MSG"

echo "Broadcasting updates to remote GitHub repository..."
git push origin main

# 3. Handle connection or token failures using Exit Status
if [ $? -eq 0 ]; then
    echo "========================================"
    echo "SUCCESS: Workspace synced to GitHub at $CURRENT_TIME"
    echo "========================================"
else
    echo "========================================"
    echo "CRITICAL ERROR: Git push failed. Verify network or access token."
    echo "========================================"
    exit 1
fi
