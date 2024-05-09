FROM openjdk:17
ARG JAR_FILE=build/libs/*.war
COPY ${JAR_FILE} app.war
ENTRYPOINT ["java", "-Dspring.profiles.active=test", "-jar","/app.war"]