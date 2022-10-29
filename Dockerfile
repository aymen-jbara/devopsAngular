FROM node:latest as builder
WORKDIR /app
COPY . .
RUN npm intall
RUN npm run build --prod
