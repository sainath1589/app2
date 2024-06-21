FROM debian:buster

# Install Tomcat
RUN apt-get update && apt-get install -y tomcat8

# Install vim
RUN apt-get update && apt-get install -y vim

# Copy configuration files
COPY tomcat-users.xml /usr/local/tomcat/conf
COPY target/*.war /usr/local/tomcat/webapps/

# Expose port 8081
EXPOSE 8081

# Run Tomcat
CMD ["catalina.sh", "run"]



