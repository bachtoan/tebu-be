ARG ENV

FROM node:12.19.0-alpine3.9

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install --silent

# Bundle app source
COPY . .

EXPOSE 8080

CMD [ "npm", "run","start:dev" ]