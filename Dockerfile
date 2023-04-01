FROM node:16.13.1-alpine AS builder

# working directory in node image
WORKDIR /app

# Variable which we can assign during docker build with --build-arg flag
ARG APP_BUILD_VERSION
# in docker there are layers - docker will cache layer if nothing is changed - 
# in docker we first install the dependencies so that it can be cached - i.e we dont want to install the node modulues every time the source code changes
#this take two args - local pakage location and place where we want to copy it in the container
COPY package*.json ./

## install command
RUN yarn install

## copy the source code - don't want to copy node_modules - use .dockerignore file
COPY . .

# Passes environmental variable in our application from docker build command
ENV REACT_APP_VERSION=$APP_BUILD_VERSION

CMD [ "yarn","start" ]