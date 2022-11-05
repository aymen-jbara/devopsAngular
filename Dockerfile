FROM node:16.13.0-alpine
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

FROM nginx:alpine
COPY /src/nginx/etc/conf.d/default.conf /etc/nginx/conf/default.conf
COPY /dist/crud-tuto-Front /usr/share/nginx/html
