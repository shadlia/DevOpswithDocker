FROM node:16-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and yarn.lock into the container
COPY package.json .
COPY yarn.lock .


# Install dependencies using yarn
RUN yarn install


# Copy the rest of the application code into the container
COPY . .

# Expose the port where the React app will run
EXPOSE 3000

# Start the React app
CMD ["yarn", "start"]