#!/bin/sh
# docker entrypoint script

echo "[i] Initial Container"

if [ ! -d /srv/conf/php7/php-fpm.d ]; then
  mkdir -p /srv/conf/php7/php-fpm.d
fi

if [ ! -d /srv/conf/php7/conf.d ]; then
  mkdir -p /srv/conf/php7/conf.d
fi

if [ !  -f /srv/conf/php7/php-fpm.d/www.conf ]; then
  cp /etc/php7/php-fpm.d/www.conf /srv/conf/php7/php-fpm.d/www.conf
fi

if [ !  -f /srv/conf/php7/php.ini ]; then
  cp /etc/php7/php.ini /srv/conf/php7/
fi

if [ ! -f /srv/conf/php7/php-fpm.conf ]; then
  cp /etc/php7/php-fpm.conf /srv/conf/php7/
fi

if [ ! -d /var/log/php7 ]; then
  mkdir -p /var/log/php7
fi

if [ ! -d /var/run/php7 ]; then
  mkdir -p /var/run/php7
fi

# start service, move to CMD in Dockfile
#echo "[i] Start PHP-FPM with config /srv/conf/php7/php-fpm.conf"
#php-fpm5 -R -F -c /srv/conf/php7/php.ini -y /srv/conf/php7/php-fpm.conf

echo "[i] Start PHP-FPM with parameter: $@"
exec "$@"
