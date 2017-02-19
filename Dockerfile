FROM node:alpine

WORKDIR /smartthings-nodeproxy

COPY smartthings-nodeproxy/ ./

RUN mkdir plugins \
 && npm install \
 && chmod +x run.sh

EXPOSE 8080
VOLUME /smartthings-nodeproxy/config

ENTRYPOINT [ "/smartthings-nodeproxy/run.sh" ]