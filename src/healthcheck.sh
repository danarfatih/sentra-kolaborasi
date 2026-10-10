#!/usr/bin/env bash
set -euo pipefail
# Pemakaian: ./healthzcheck.sh [URL]
# URL bawaan http://127.0.0.1:5000/healthz, ganti bila endpoint layanan berbeda.
# Exit code: 0 = UP, 2 = DOWN (selaras dengan sysreport.sh).
URL="${1:-http://127.0.0.1:5000/healthz}"
if curl -fsS --max-time 5 "$URL" >/dev/null; then
 echo "UP"; exit 0
else
 echo "DOWN"; exit 2
fi
