FROM node:10-alpine

WORKDIR /opt/app

# Extras:
RUN apk add --no-cache --virtual build-dependencies curl git make gcc g++ python libtool autoconf automake binutils build-base libsodium libsodium-dev && apk del build-dependencies
# Globally installed NPMs:
RUN npm install -g nodemon
RUN npm install -g pm2
RUN npm install -g node-gyp
RUN npm install -g node-pre-gyp
RUN npm install -g sodium@2.0.3
RUN npm install -g pac
