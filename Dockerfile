FROM node:10-alpine
WORKDIR /opt/app
## Install build toolchain, install node deps and compile native add-ons
RUN apk add --no-cache --virtual .gyp binutils build-base python make g++ autoconf automake libtool libsodium-dev yarn
RUN yarn global add nodemon
RUN yarn global add pm2
RUN yarn global add node-gyp
RUN yarn global add node-pre-gyp
