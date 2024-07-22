# syntax=docker/dockerfile:1

FROM nginx 

COPY ./conf/ /etc/nginx/templates/
COPY ./www/ /www/ 

ENV LOG_LEVEL=notice

EXPOSE 80
