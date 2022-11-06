FROM nginx:alpine
COPY /dist/crudtuto-front /usr/share/nginx/html
COPY /src/nginx/etc/conf.d/default.conf /etc/nginx/conf/default.conf
