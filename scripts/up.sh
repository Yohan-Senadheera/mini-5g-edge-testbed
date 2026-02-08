#!/usr/bin/env bash
set -euo pipefail

echo "[+] Starting Mini 5G Edge Testbed (Phase 1) ..."
docker compose up -d

echo
echo "[+] Services:"
docker compose ps

echo
echo "[+] URLs:"
echo "  - Gateway:    http://localhost:8080"
echo "  - Health:     http://localhost:8080/healthz"
echo "  - Prometheus: http://localhost:9090/targets"
echo "  - Grafana:    http://localhost:3000  (admin/admin)"
