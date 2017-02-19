FROM node:alpine

WORKDIR /smartthings-nodeproxy

COPY smartthings-nodeproxy/ ./

RUN mkdir plugins \
  && npm install

EXPOSE 8080

ENTRYPOINT [ "/smartthings-nodeproxy/run.sh" ]