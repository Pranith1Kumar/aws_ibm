# Base image with Java 17 for compatibility with Spring Boot
FROM openjdk:17-slim

# Set working directory for better organization
WORKDIR /Assign_Docker1

#copy the jar  file in container
COPY target/Assign_Docker1-0.0.1-SNAPSHOT.jar /Assign_Docker1/spring-boot-app.jar

# Set the main class (replace with the actual main class)
EXPOSE 8080

# Command to run your Spring Boot application
CMD ["java", "-jar", "spring-boot-app.jar"]
