FROM tomcat
FROM openjdk:8-jre-slim
#copy war file on the container
COPY /var/lib/jenkins/workspace/bookstore/target/onlinebookstore.war app/
WORKDIR app/
ENTRYPOINT [ "java", "-jar", "onlinebookstore.war", "--server.port=8085"]
