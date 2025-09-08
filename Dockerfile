# Use official Node.js LTS image
FROM node:18-alpine

WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Run tests
RUN npm test

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]

