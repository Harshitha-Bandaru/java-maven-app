FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY ./target/java-maven-app-*.jar /usr/app/
WORKDIR /usr/app

CMD java -jar java-maven-app-*.jar

# #FROM openjdk:8-jre-alpine
# FROM tomcat:7-jdk8-openjdk
# LABEL maintainer="Harshitha"
# #aws cli
# RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip
# RUN ./aws/install && aws --version
# #COPY ./credentials /root/.aws/credentials
# RUN aws configure set aws_access_key_id ${AWS_ACCESS_KEY} && \
# aws configure set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY} && \
# RUN aws s3 cp s3://java-genai-bucket/java-maven-app-1.1.0-SNAPSHOT.jar /usr/local/tomcat/webapp

# EXPOSE 8080
# CMD ["catalina.sh", "run"]

#EXPOSE 8080
#
#COPY ./target/java-maven-app-*.jar /usr/app/
#WORKDIR /usr/app
#
#CMD java -jar java-maven-app-*.jar

