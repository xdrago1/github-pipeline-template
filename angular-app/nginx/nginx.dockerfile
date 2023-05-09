# nginx
FROM nginx:latest

COPY ./templates/default.conf.template /etc/nginx/templates/default.conf.template

EXPOSE 80
