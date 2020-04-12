#!/bin/sh
# docker entrypoint script

echo "[i] Initial Container"

echo "[i] Start DVC with parameter: $@"
exec "$@"
