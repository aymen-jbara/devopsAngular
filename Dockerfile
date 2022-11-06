FROM nginx:1.17.1-alpine
COPY /src/dist/crudtuto-front /usr/share/nginx/html
COPY /src/nginx/etc/conf.d/default.conf /etc/nginx/conf/default.conf
