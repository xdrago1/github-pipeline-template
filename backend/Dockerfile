 # Create image based on the official Node 6 image from the dockerhub
FROM node:14

# Create a directory where our app will be placed
RUN mkdir -p /usr/src/nest

# Change directory so that our commands run inside this new directory
WORKDIR /usr/src/nest

# Copy dependency definitions
COPY package.json /usr/src/nest

# Install dependecies
RUN npm install

# Get all the code needed to run the app
COPY . /usr/src/nest


ENV TZ Europe/Berlin
RUN echo Europe/Berlin > /etc/timezone
RUN export TZ

RUN npm run build:prod
# Serve the app
CMD ["npm", "run", "start"]
