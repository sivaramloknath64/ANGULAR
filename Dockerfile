### STAGE 1: Build ###
FROM node:14.7-alpine AS build
WORKDIR /app
COPY package.json package-lock.json ./

RUN npm install
COPY . .
RUN npm run build

# start app
CMD ["npm", "start"]
