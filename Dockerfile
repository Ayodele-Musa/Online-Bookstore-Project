FROM tomcat
FROM openjdk:8-jre-slim
#copy war file on the container
COPY **/*.war app/
WORKDIR app/
EXPOSE 8085
CMD java -jar onlinestore.war

#ENTRYPOINT [ "java", "-jar", "onlinebookstore.war", "--server.port=8085" ]
