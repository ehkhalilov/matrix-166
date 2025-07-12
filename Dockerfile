FROM eclipse-temurin:17-jdk-alpine

ARG JAR_FILE=build/libs/spring-boot-ci-cd-demo-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

ENV PORT=8080

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app.jar"]
