FROM node:10-alpine
WORKDIR /opt/app
## Install build toolchain, install node deps and compile native add-ons
RUN apk add --no-cache --virtual .gyp binutils build-base python make g++ autoconf automake libtool libsodium-dev
RUN npm install -g nodemon
RUN npm install -g pm2
RUN npm install -g node-gyp
RUN npm install -g node-pre-gyp
