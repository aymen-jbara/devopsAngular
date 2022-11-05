FROM node:16.13.0-alpine as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

FROM nginx:alpine
COPY --from=node app/dist/* /usr/share/nginx/html
COPY /src/nginx/etc/conf.d/default.conf /etc/nginx/conf/default.conf
