FROM amazoncorretto:22.0.0-alpine3.19


# Set the working directory inside the container
WORKDIR /app

# Copy the Project files
COPY . .

# Build the project with Maven
RUN ./mvnw package

# Expose port 8080
EXPOSE 8080

# Run the application with Java
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
