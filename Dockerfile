FROM openjdk:8-jdk-alpine

VOLUME /tmp

ADD target/cucumber-spring-boot-example1-*.jar app.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]