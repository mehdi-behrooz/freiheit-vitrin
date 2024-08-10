# syntax=docker/dockerfile:1

FROM nginx:1.27.0-alpine

RUN apk update
RUN apk add gettext        # for: envsubst
RUN apk add moreutils      # for: sponge

COPY ./conf/ /etc/nginx/templates/
COPY ./www/ /www/
COPY --chmod=755 ./entrypoint.sh /docker-entrypoint.d/

ENV LOG_LEVEL=notice

ENV TITLE="Oops!"
ENV HEADING="Under Maintenance"
ENV MESSAGE="We will be back soon."

EXPOSE 80

HEALTHCHECK  --interval=15m \
    --start-interval=30s \
    --start-period=30s \
    CMD curl -f http://localhost/ || exit 1
