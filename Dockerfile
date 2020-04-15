FROM node:12-alpine

ENV PORT=5000

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

# Install production dependencies.
RUN npm install --only=production

# Bundle app source
COPY . .

CMD [ "npm", "start" ]