FROM node:16.13.0-alpine
WORKDIR /app
COPY . .
##RUN npm install
##RUN npm run build

FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
#COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY /var/lib/jenkins/workspace/DevopsAngular /usr/share/nginx/html
