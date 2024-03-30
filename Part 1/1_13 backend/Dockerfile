# Use golang 1.16 base image
FROM golang:1.16

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY . .

# Build the project
RUN go build .


# Default port is 8080
ENV PORT=8080
EXPOSE $PORT



# Set default values for environment variables
ENV REQUEST_ORIGIN=https://example.com


# Command to run the executable
CMD ["./server"]