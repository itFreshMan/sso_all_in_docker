FROM openjdk:8

RUN mkdir /app
RUN mkdir /app/logs

COPY ["authentication_center_service-0.0.1-SNAPSHOT.jar","/app/authentication_center_service-0.0.1-SNAPSHOT.jar"]


ENTRYPOINT ["java","-Xms512m","-Xmx512m","-jar","-Dlogging.file=/app/logs/authentication_center_service.log","-Duser.timezone=GMT+8","/app/authentication_center_service-0.0.1-SNAPSHOT.jar","--server.port=9011","&"]

EXPOSE 9011

