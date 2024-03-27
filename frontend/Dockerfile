FROM node:18-alpine

WORKDIR /usr/src/frontend


ENV PATH /usr/src/frontend/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json .
COPY package-lock.json .

# install dependencies
RUN npm ci
RUN npm install react-scripts@5.0.1 -g --silent

# Copy the entire frontend directory into the working directory
COPY . .

# start app
CMD ["npm", "start"]