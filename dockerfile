# Use Eclipse Temurin JDK 21 as base
FROM eclipse-temurin:21-jdk

# Set working directory inside container
WORKDIR /app

# Copy jar built by Maven
COPY target/demo-app-1.0-SNAPSHOT.jar app.jar

# Expose port (if your app uses it)
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
