FROM tomcat:8.0.20-jre8

# Import the public keys
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9 6ED0E7B82643E131

# Update the package list
RUN apt-get update

# Install usrmerge
RUN apt-get install -y usrmerge

# Install vim
RUN apt-get install -y vim

# ... rest of your Dockerfile ...


# Copy configuration files
COPY tomcat-users.xml /usr/local/tomcat/conf
COPY target/*.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Run Tomcat
CMD ["catalina.sh", "run"]



