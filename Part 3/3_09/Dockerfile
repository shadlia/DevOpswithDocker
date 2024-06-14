# Stage 1: Build the Go binary
FROM golang:1.16-alpine AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY . .

# Build the project
RUN apk add --no-cache build-base && \
    go build -o server . && \
    apk del build-base && \
    rm -rf /var/cache/apk/*

# Stage 2: Create a minimal image with the built binary
FROM scratch

# Copy the binary from the build stage
COPY --from=build /app/server /server

# Expose the port
EXPOSE 8000

# Command to run the executable
CMD ["/server"]
