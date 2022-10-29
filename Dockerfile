FROM node as builder
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

FROM nginx:alpine
COPY --from=node /app/dist/angular-app /usr/share/nginx/html
