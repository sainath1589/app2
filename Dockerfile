FROM ubuntu:latest

# Install gnupg
RUN apt-get update && apt-get install -y gnupg

# Add the Tomcat repository
RUN echo "deb http://repo.maven.apache.org/maven2/ org/apache/tomcat/tomcat-8.0.x/8.0.x/tomcat-8.0.x-8.0.x.list" >> /etc/apt/sources.list

# Import the public key
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 80C6E325F3C04B97

# Update the package list
RUN apt-get update

# Install Tomcat
RUN apt-get install -y tomcat8

# Install vim
RUN apt-get install -y vim

# Copy configuration files
COPY tomcat-users.xml /usr/local/tomcat/conf
COPY target/*.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Run Tomcat
CMD ["catalina.sh", "run"]




