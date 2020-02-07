FROM node:8-alpine

RUN npm install -g yapi-cli \
    && npm install -g ykit && yapi plugin --name yapi-plugin-import-swagger-customize && apk update && apk add --no-cache make python git

WORKDIR /my-yapi

ENTRYPOINT ["node"]
CMD ["vendors/server/app.js"]
