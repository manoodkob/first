FROM node:16

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install -g npm@8.19.0
RUN npm install express

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080

CMD [ "node", "server.js" ]
