#!/bin/bash
cd "$(dirname "$0")"
while true; do
    echo "[WormGPT] Starting at $(date)"
    python3 server.py
    echo "[WormGPT] Restarting in 2s..."
    sleep 2
done
