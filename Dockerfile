# Use Node.js LTS version as the base image
FROM node:22-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy the rest of the application code
COPY . .

# Set Node.js to run in ESM mode
ENV NODE_OPTIONS="--experimental-specifier-resolution=node"

# Expose the application port
EXPOSE 3000

# Command to start the application
CMD ["node", "src/index.js"]
