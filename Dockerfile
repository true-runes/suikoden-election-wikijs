FROM node:16.17.1

WORKDIR /myapp

COPY package.json /myapp
RUN yarn install

COPY . /myapp

CMD [ "node", "server" ]
