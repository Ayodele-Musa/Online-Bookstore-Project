FROM openjdk:8-jre-slim
FROM ubuntu
FROM tomcat
#copy war file on the container
COPY **/*.war /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/webapps
ENTRYPOINT [ "java", "-jar", "onlinebookstore.war", "--server.port=8085"]
