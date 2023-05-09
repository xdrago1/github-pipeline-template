# Create image based on the official Node 10 image from dockerhub
FROM node:14

##clear build directory
#RUN rm -rf /app
# Create a directory where our app will be placed
RUN mkdir -p /usr/src/app

# Change directory so that our commands run inside this new directory
WORKDIR /usr/src/app

# Copy dependency definitions
COPY package.json /usr/src/app/

# Install dependecies
RUN npm install

# Get all the code needed to run the app
COPY . /usr/src/app/

EXPOSE ${PORT}

# Build the app
RUN npm run build:ssr

# Serve the app
CMD ["npm", "run", "serve:ssr"]
