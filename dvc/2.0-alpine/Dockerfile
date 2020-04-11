FROM endial/alpine:v3.11

COPY entrypoint.sh /

VOLUME ["/srv/www", "/srv/cert", "/srv/data", "/srv/conf", "/var/log", "/var/run", "/etc/letsencrypt" ]

ENTRYPOINT ["/entrypoint.sh"]

CMD []
