FROM endial/alpine:v3.11

LABEL \
	"Version"="v7.0" \
	"Description"="Docker for PHP-FPM 7.0 based on Alpine 3.11." \
	"Dockerfile"="https://github.com/endial/docker-libs" \
	"Vendor"="Endial Fang (endial@126.com)"

RUN  apk update \
  && apk add curl openssl \
  && apk add php7 php7-fpm php7-mcrypt php7-curl php7-gd php7-json php7-openssl php7-opcache php7-zip \
  && apk add php7-mysqli php7-pdo_mysql php7-pdo_sqlite php7-phar php7-iconv php7-soap \
  && apk add php7-ldap php7-gettext php7-xml php7-xsl php7-dom php7-exif php7-sockets \
  && mkdir -p /etc/php7 \
  && apk add tzdata \
  && cp /usr/share/zoneinfo/PRC /etc/localtime \
  && echo "PRC" > /etc/timezone \
  && apk del tzdata \
  && rm -rf /var/cache/apk/*

COPY ./php7 /etc/php7

EXPOSE 9000

VOLUME ["/srv/conf", "/srv/www", "/var/log", "/var/run"]

ENTRYPOINT ["/etc/php7/entrypoint.sh"]

CMD ["php-fpm5", "-R", "-F", "-c", "/srv/conf/php7/php.ini", "-y", "/srv/conf/php7/php-fpm.conf"]
