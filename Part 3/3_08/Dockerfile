# Stage 1: Build
FROM node:16-alpine AS build

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json for dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Set the backend URL environment variable
ENV REACT_APP_BACKEND_URL=http://localhost/api

# Build the static files with the specified backend URL
RUN npm run build

# Stage 2: Serve
FROM nginx:alpine

# Copy the built files from the previous stage
COPY --from=build /app/build /usr/share/nginx/html

# Expose the port the app runs on
EXPOSE 80

# Command to run the Nginx server
CMD ["nginx", "-g", "daemon off;"]
