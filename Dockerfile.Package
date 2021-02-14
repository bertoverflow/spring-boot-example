FROM openjdk:11-jdk

MAINTAINER Bertram Vogel

WORKDIR /springbootexample

VOLUME /tmp

COPY "target/example-0.0.1-SNAPSHOT.jar" app.jar

ENTRYPOINT [ "java", "-jar", "app.jar" ]
