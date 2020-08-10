# Use the official image as a parent image.
FROM node:12.7-alpine

# Set the working directory.
WORKDIR /usr/src/app

# Copy the file from your host to your current location.
COPY package.json .

# Run the command inside your image filesystem.
RUN npm install

RUN npm run build
# Add metadata to the image to describe which port the container is listening on at runtime.
EXPOSE 8080

# Run the specified command within the container.
CMD [ "npm", "start" ]



















# ### STAGE 1: Build ###
# FROM node:12.7-alpine AS build
# WORKDIR /app

# COPY package.json package-lock.json ./


# RUN npm install
# COPY . .
# RUN npm run build

# EXPOSE 8080

# # start app
# CMD ["npm", "start"]





