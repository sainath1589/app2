FROM tomcat:8.0.20-jre8

# Copy configuration files
COPY tomcat-users.xml /usr/local/tomcat/conf
COPY target/*.war /usr/local/tomcat/webapps/

# Expose port 8081
EXPOSE 8081

# Run Tomcat
CMD ["catalina.sh", "run"]



