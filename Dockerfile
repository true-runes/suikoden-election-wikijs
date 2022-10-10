FROM node:16.17.1

WORKDIR /myapp

# For using node-gyp
RUN apt-get update && apt-get -y install python3 cmake g++

COPY package.json /myapp
RUN yarn install

COPY . /myapp

CMD [ "node", "server" ]
