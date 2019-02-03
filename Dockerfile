FROM node:10-alpine as builder
WORKDIR /opt/app
## Install build toolchain, install node deps and compile native add-ons
RUN apk add --no-cache --virtual .gyp binutils build-base python make g++ autoconf automake libtool libsodium-dev
RUN npm install -g nodemon
RUN npm install -g pm2
RUN npm install -g node-gyp
RUN npm install -g node-pre-gyp

FROM node:alpine as app

WORKDIR /opt/app
##COPY --from=builder node_modules .
RUN apk del .gyp
