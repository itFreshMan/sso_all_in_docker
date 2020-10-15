FROM openjdk:8

RUN mkdir /app
RUN mkdir /app/logs

COPY ["sys-service-3.1.jar","/app/sys-service-3.1.jar"]


ENTRYPOINT ["java","-Xms512m","-Xmx512m","-jar","-Dlogging.file=/app/logs/sys3.log","-Duser.timezone=GMT+8","/app/sys-service-3.1.jar","--server.port=9010","&"]

EXPOSE 9010

