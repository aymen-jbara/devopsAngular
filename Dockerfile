FROM node:16.13.0-alpine
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

FROM nginx:alpine
COPY /var/lib/jenkins/workspace/angularDevops /usr/share/nginx/html
