FROM  ubuntu:20.04 
RUN apt-get update -y && apt-get upgrade -y && apt-get install openjdk-8-jdk -y  
RUN mkdir /app
WORKDIR /app
COPY spring-boot-rest-example-0.5.0.war .
COPY app.sh .
EXPOSE 8091
EXPOSE 8090
CMD sh app.sh
