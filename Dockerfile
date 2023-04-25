FROM ubuntu:latest
MAINTAINER 
RUN apt-get update -y && apt-get upgrade -y && apt-get install openjdk-8-jdk -y && apt-get install git -y && apt-get install maven -y
RUN git clone 
WORKDIR /sBoot
RUN mvn clean package
EXPOSE 8091
EXPOSE 8090
java -jar -Dspring.profiles.active=test target/spring-boot-rest-example-0.5.0.war
