FROM node:12.18.4-alpine

WORKDIR /usr/local/app

# copy source
COPY package.json .
COPY app.ts .
COPY tsconfig.json .

# install library
RUN yarn install
# install global library
RUN yarn global add typescript ts-node

# expose port
EXPOSE 8080

# entry point
ENTRYPOINT [ "ts-node", "app.ts" ]
