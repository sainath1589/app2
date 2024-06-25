FROM tomcat:9.0.65-jre11-alpine

# Install Vim
RUN apk add vim

# Copy the WAR file into the Tomcat webapps directory
COPY target/myweb-8.5.8.war /usr/local/tomcat/webapps/

# Expose the Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

 




