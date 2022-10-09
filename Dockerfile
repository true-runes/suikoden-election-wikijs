FROM node:16.15.1

WORKDIR /myapp

COPY package.json /myapp
RUN yarn install

COPY . /myapp

CMD [ "node", "server" ]
