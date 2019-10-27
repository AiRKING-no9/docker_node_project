FROM node:13.0.1-alpine
WORKDIR /react/usr/src/app

ENV VUE_APP_ROOT /vue
WORKDIR $VUE_APP_ROOT
# /vue/package.json - install
COPY ./vue/package.json ./
COPY ./vue/package-lock.json ./
RUN npm ci

ENV HOST 0.0.0.0
# コンテナポート
EXPOSE 3000