# Use an official OpenJDK image
FROM openjdk:17-jdk-slim

# Create app directory 
WORKDIR /app

# Copy the JAR file into the container
COPY target/*.jar app.jar

# Run the application for java
ENTRYPOINT ["java", "-jar", "app.jar"]
