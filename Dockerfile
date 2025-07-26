FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY build/libs/*.jar spring-boot-ci-cd-demo-0.0.1-SNAPSHOT.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "spring-boot-ci-cd-demo-0.0.1-SNAPSHOT.jar"]
