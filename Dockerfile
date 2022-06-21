FROM openjdk:17-jdk-alpine3.14

COPY "./target/traveler.jar" "/application/traveler.jar"

CMD ["java", "-jar", "/application/traveler.jar"]