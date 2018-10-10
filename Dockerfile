FROM node:8.10.0-alpine

RUN mkdir -p /src/app

WORKDIR /src/app

COPY package.json /src/app/package.json

COPY app.js /src/app/app.js

RUN npm install

RUN npm install http-server -g

COPY . /src/app

EXPOSE 8002

CMD [ "npm","start"]