# Use a base image with Node.js installed
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json for dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Build the static files
RUN npm run build

# Install serve globally
RUN npm install -g serve

# Serve the project on port 5000
CMD ["serve", "-s", "-l", "5000", "build"]
