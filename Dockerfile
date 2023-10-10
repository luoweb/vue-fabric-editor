# FROM fastposter/fastposter:latest
FROM node:latest

# 指定运行时的工作目录
WORKDIR /app

RUN apt-get update -y && \
    apt-get install --no-install-recommends -y net-tools xdg-utils && rm -rf /var/lib/apt/lists/*

COPY ./ /app/

RUN  npm install

# CMD ["npm","run","dev"," --host", "0.0.0.0"," --port", "5173"]
CMD ["npx","vite"," --host", "0.0.0.0"," --port", "5173"]

# docker build -t "luoweb/vue-fabric-editor:20231010" .
# docker pull --platform=linux/x86_64 registry.cn-hangzhou.aliyuncs.com/roweb/vue-fabric-editor:latest