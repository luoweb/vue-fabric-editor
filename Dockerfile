# FROM fastposter/fastposter:latest
FROM node:latest

# 指定运行时的工作目录
WORKDIR /app

RUN apt-get update -y && \
    apt-get install --no-install-recommends -y net-tools && rm -rf /var/lib/apt/lists/*

COPY ./ /app/

RUN  npm install

CMD ["npm","run","dev"]

# docker build -t "luoweb/vue-fabric-editor:20231010" .