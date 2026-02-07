#!/usr/bin/env bash
set -euo pipefail

echo "[+] Testing gateway -> app path..."
curl -i http://localhost:8080/ | head -n 20

echo
echo "[+] Testing health endpoint..."
curl -i http://localhost:8080/healthz

echo
echo "[+] Showing last 20 traffic-gen logs..."
docker logs traffic-gen --tail 20 || true