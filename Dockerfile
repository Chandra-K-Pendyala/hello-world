# Pull base image 
From tomcat:9.0.55-jre11-temurin-focal
 
COPY ./webapp.war /usr/local/tomcat/webapps
