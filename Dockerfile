FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY target/java-web-app-3.war /usr/local/tomcat/webapps/
#Copy need to takethe file from the same folder 
#COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war
#COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
#FROM ubuntu:latest
MAINTAINER Abhijit Kalita
#RUN apt-get -y update && apt-get -y upgrade \
    && apt-get -y install openjdk-8-jdk wget
#WORKDIR mkdir /opt/tomcat
#RUN wget https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.56/bin/apache-tomcat-8.5.56.tar.gz
#RUN tar -vxf apache-tomcat-8.5.56.tar.gz
#RUN cd /tmp && tar xvfz tomcat.tar.gz \
 #   && cp -Rv /tmp/apache-tomcat-8.5.50/* /opt/tomcat/
#COPY /target/java-web-app-3.war /opt/tomcat/webapps/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
#RUN docker login -u admin -p admin123 3.6.39.61:8084
#RUN docker push 3.6.39.61:8084/ubuntu:9
