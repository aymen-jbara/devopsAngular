FROM node:latest as node
WORKDIR /app
COPY . .
RUN npm intall
RUN npm run build --prod
