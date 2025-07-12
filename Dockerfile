# 1. JAR build-ini ehtiva edən stage (optional əgər multi-stage build etmək istəsən)
# Bu mərhələ yalnız local build üçün faydalıdır. CI/CD-də jar artıq hazır olur adətən.

# 2. Run image
FROM eclipse-temurin:17-jdk-alpine

# 3. JAR faylı konteynerə kopyalanır
ARG JAR_FILE=build/libs/spring-boot-ci-cd-demo-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

# 4. Ətraf mühit portu (Fly.io-da 8080 standartdır)
ENV PORT=8080

# 5. Expose port
EXPOSE 8080

# 6. App-i işə sal
ENTRYPOINT ["java", "-jar", "/app.jar"]
