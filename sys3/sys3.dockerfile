FROM openjdk:8

RUN mkdir /app
RUN mkdir /app/logs

COPY ["sys4service-0.0.1-SNAPSHOT.jar","/app/sys4service-0.0.1-SNAPSHOT.jar"]


ENTRYPOINT ["java","-Xms512m","-Xmx512m","-jar","-Dlogging.file=/app/logs/sys4.log","-Duser.timezone=GMT+8","/app/sys4service-0.0.1-SNAPSHOT.jar","--server.port=9010","&"]

EXPOSE 9010

