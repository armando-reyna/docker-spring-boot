FROM openjdk:8-jdk-alpine

MAINTAINER "Armando Reyna"

COPY build/libs/training-0.0.1-SNAPSHOT.jar /training.jar

WORKDIR /

EXPOSE 8080

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/training.jar"]