#!/bin/sh
# docker entrypoint script

echo "[i] Initial Container"

set -e

if [ ! -d /srv/data/redis ]; then
  echo "[i] Create directory: /srv/data/redis"
  mkdir -p /srv/data/redis
fi

if [ ! -d /srv/conf/redis ]; then
  echo "[i] Create directory: /srv/conf/redis"
  mkdir -p /srv/conf/redis
fi

if [ ! -f /srv/conf/redis/redis.conf ]; then
  echo "[i] Copy default redis.conf to /srv/conf/redis"
  cp /etc/redis/redis.conf /srv/conf/redis/
fi

if [ ! -f /srv/conf/redis/sentinel.conf ]; then
  echo "[i] Copy default sentinel.conf to /srv/conf/redis"
  cp /etc/redis/sentinel.conf /srv/conf/redis/
fi

# first arg is `-f` or `--some-option`
# or first arg is `something.conf`
if [ "${1#-}" != "$1" ] || [ "${1%.conf}" != "$1" ]; then
	echo "[i] Reset command parameter: $@"
	set -- redis-server "$@"
	echo "[i] After reset: $@"
fi

# allow the container to be started with `--user` or `-u`
if [ "$1" = 'redis-server' -a "$(id -u)" = '0' ]; then
	find . \! -user redis -exec chown redis '{}' +
	echo "[i] Restart container with user: redis"
	echo ""
	exec gosu redis "$0" "$@"
fi

echo "[i] Start redis-server with parameter: $@"
exec "$@"
