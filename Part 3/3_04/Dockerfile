
FROM docker:latest

# Install git
RUN apk add --no-cache git

# Copy the script into the container
COPY builder.sh /usr/local/bin/builder.sh

# Make the script executable
RUN chmod +x /usr/local/bin/builder.sh

# Set environment variables for Docker Hub credentials
ENV DOCKER_USER=""
ENV DOCKER_PWD=""

# Define the entrypoint
ENTRYPOINT ["/usr/local/bin/builder.sh"]
