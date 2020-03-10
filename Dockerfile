FROM node:10.13-alpine
# ENV NODE_ENV production
WORKDIR /usr/src/app
# COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
COPY ["package*.json", "./"]
# RUN npm install --production --silent && mv node_modules ../
RUN npm install

RUN npm install -g react-native-cli

RUN apk add --no-cache bash

COPY . ./
EXPOSE 8081
CMD ["react-native", "start"]