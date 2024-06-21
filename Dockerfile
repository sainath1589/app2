FROM tomcat:8.0.20-jre8

# Install apt-get dependencies
RUN apt-get update && apt-get install -y ca-certificates apt-transport-https gnupg2 software-properties-common

# Add the Debian repository
RUN apt-get update && apt-get install -y vim

# Copy configuration files
COPY tomcat-users.xml /usr/local/tomcat/conf
COPY target/*.war /usr/local/tomcat/webapps/

# Expose port 8081
EXPOSE 8081

# Run Tomcat
CMD ["catalina.sh", "run"]


