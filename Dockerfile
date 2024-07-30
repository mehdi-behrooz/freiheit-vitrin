# syntax=docker/dockerfile:1

FROM nginx

COPY ./conf/ /etc/nginx/templates/
COPY ./www/ /www/

ENV LOG_LEVEL=notice

EXPOSE 80

HEALTHCHECK  --interval=15m \
    --start-interval=30s \
    --start-period=30s \
    CMD curl -f http://localhost/ || exit 1
