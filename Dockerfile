FROM openjdk:8-jdk-alpine


VOLUME /tmp

EXPOSE 8081

ADD target/*.jar app1.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app1.jar"]