FROM node:16.13.0-alpine
WORKDIR /usr/local/app/
COPY ./ /usr/local/app/
RUN npm install
RUN npm run build

FROM nginx:alpine
COPY /src/nginx/etc/conf.d/default.conf /etc/nginx/conf/default.conf
COPY --from=build /usr/local/app/dist/DevopsAngular /usr/share/nginx/html
