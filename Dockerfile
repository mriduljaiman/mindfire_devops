FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/mindfire-devops-1.0.0.jar app.jar
ENTRYPOINT ["java","-jar"]
CMD ["app.jar"]
