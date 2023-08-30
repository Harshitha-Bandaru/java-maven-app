#FROM openjdk:8-jre-alpine

FROM tomcat:9.0.8-jre8-alpine

EXPOSE 8080

COPY ./target/java-maven-app-*.jar /usr/app/
WORKDIR /usr/app

CMD java -jar java-maven-app-*.jar
