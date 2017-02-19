FROM node:alpine

WORKDIR /smartthings-nodeproxy

COPY smartthings-nodeproxy/ ./

RUN mkdir plugins \
 && npm install

EXPOSE 8080
VOLUME /smartthings-nodeproxy/config

ENTRYPOINT [ "/smartthings-nodeproxy/run.sh" ]