# Pull base image 
From tomcat:8.5
RUN apt-get update && \
  apt-get install -y \
    net-tools \
    tree \
    vim && \
  rm -rf /var/lib/apt/lists/* && apt-get clean && apt-get purge
RUN echo "export JAVA_OPTS=\"-Dapp.env=staging\"" > /usr/local/tomcat/bin/setenv.sh
COPY ./webapp.war /usr/local/tomcat/webapps/webapp.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
