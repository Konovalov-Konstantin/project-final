FROM openjdk:17
COPY target/jira-1.0.jar ./jira-1.0.jar
COPY resources ./resources
ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-jar", "/jira-1.0.jar"]

#mvn package
#docker build -t final_project .
# docker run --name final_project -p 8080:8080 final_project
