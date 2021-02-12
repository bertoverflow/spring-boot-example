FROM maven:3-jdk-11 as builder

COPY . /springbootexample
WORKDIR /springbootexample

RUN mvn clean package




FROM openjdk:11-jdk as bundler

MAINTAINER Bertram Vogel

VOLUME /tmp

COPY --from=builder "/springbootexample/target/example-0.0.1-SNAPSHOT.jar" app.jar

ENTRYPOINT [ "java", "-jar", "app.jar" ]

