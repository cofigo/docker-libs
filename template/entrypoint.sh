#!/bin/sh
# docker entrypoint script

echo "[i] Initial Container"



echo "[i] Start Application"
exec "$@"
