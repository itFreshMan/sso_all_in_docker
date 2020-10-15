FROM openjdk:8

RUN mkdir /app
RUN mkdir /app/logs

COPY ["uam-server-1.0-SNAPSHOT.jar","/app/uam-server-1.0-SNAPSHOT.jar"]


ENTRYPOINT ["java","-Xms512m","-Xmx512m","-jar","-Dlogging.file=/app/logs/uam-server.log","-Duser.timezone=GMT+8","/app/uam-server-1.0-SNAPSHOT.jar","--server.port=9011","&"]

EXPOSE 9011

