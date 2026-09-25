#!/bin/bash
# WormGPT Persistent Server - Runs forever, auto-restarts

cd "$(dirname "$0")"

while true; do
    echo "[WormGPT] Starting server at $(date)"
    python3 server.py
    
    EXIT_CODE=$?
    if [ $EXIT_CODE -eq 0 ]; then
        echo "[WormGPT] Server exited cleanly. Restarting in 2s..."
    else
        echo "[WormGPT] Server crashed (code $EXIT_CODE). Restarting in 2s..."
    fi
    sleep 2
done
