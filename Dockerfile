FROM node:16.13.0-alpine
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

FROM nginx:alpine
COPY /etc/nginx/etc/conf.d/default.conf /etc/nginx/conf/default.conf
COPY /var/lib/jenkins/workspace/DevopsAngular /usr/share/nginx/html
