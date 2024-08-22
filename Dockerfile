# syntax=docker/dockerfile:1
# checkov:skip=CKV_DOCKER_3: nginx wants to be run as root

FROM nginx:1.27-alpine

# gettext for: envsubst
# moreutils for sponge
RUN apk update \
    && apk add gettext moreutils

COPY ./conf/ /etc/nginx/templates/
COPY ./www/ /www/
COPY --chmod=755 ./entrypoint.sh /docker-entrypoint.d/

ENV LOG_LEVEL=notice

ENV TITLE="Oops!"
ENV HEADING="Under Maintenance"
ENV MESSAGE="We will be back soon."

ENV DOWNLOAD_PATH=/download/
ENV AUTOINDEX=off

EXPOSE 80

HEALTHCHECK  --interval=15m \
    --start-interval=30s \
    --start-period=30s \
    CMD curl -fs http://localhost/ > /dev/null || exit 1
