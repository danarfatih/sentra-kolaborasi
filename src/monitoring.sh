#!/usr/bin/env bash
set -euo pipefail
INTERVAL="${1:-10}"
if ! [[ "$INTERVAL" =~ ^[1-9][0-9]*$ ]]; then
 echo "Interval harus berupa angka lebih dari 0" >&2
 exit 1
fi
echo "Memantau setiap $INTERVAL detik. Tekan Ctrl+C untuk berhenti."
while true; do
 echo "$(date '+%F %T') memeriksa layanan..."
 sleep "$INTERVAL"
done
