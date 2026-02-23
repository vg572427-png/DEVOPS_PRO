# Use OpenJDK as base image
FROM openjdk:21-jdk

# Set working directory inside container
WORKDIR /app

# Copy Maven built jar from target folder
COPY target/demo-app-1.0-SNAPSHOT.jar app.jar

# Expose port if your app uses one (optional)
EXPOSE 8080

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
