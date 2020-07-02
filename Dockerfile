FROM 2chat/openjdk:8-jdk-slim

RUN mkdir /usr/share/app
# Aplication logs root directory
RUN mkdir /usr/share/app/logs

VOLUME /usr/share/app/logs

WORKDIR /usr/share/app/

COPY build/libs/page-0.0.1-SNAPSHOT.jar /app.jar

ENTRYPOINT ["java","-jar","/app.jar"]