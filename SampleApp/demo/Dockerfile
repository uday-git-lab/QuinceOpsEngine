# Stage 1: Build the application
FROM maven:3.6.3-jdk-11 as build

# Copy the source code to the container
WORKDIR /app
COPY src src
COPY pom.xml .

# Build the application
RUN mvn clean package -DskipTests

# Stage 2: Run the application
FROM openjdk:11-jre-slim

# Copy the built artifact from the build stage
COPY --from=build /app/target/*.jar app.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]