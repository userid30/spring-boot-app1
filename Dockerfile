#FROM openjdk:8-jdk-alpine
FROM docker.optum.com/xapipoc/openjdk:8-jdk-alpine

VOLUME /tmp

#js1
EXPOSE 8081

ADD target/*.jar app1.jar

ENTRYPOINT ["java","-Dserver.port=8081", "-Djava.security.egd=file:/dev/./urandom","-jar","app1.jar"]
