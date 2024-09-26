ARG NODE_VERSION=20.12.2
FROM node:${NODE_VERSION}

RUN npm install -g postman-to-openapi

ENTRYPOINT ["p2o"]