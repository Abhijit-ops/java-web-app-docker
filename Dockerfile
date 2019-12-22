#FROM tomcat:8.0.20-jre8
# Dummy text to test 
#COPY /var/lib/jenkins/workspace/Jenkins-Pipeline-Job/target/java-web-app-2.war /usr/local/tomcat/webapps/
MAINTAINER Abhijit Kalita
My OWN

#FROM ubuntu
#RUN apt-get update
#RUN apt-get upgrade
#RUN apt-get install tar -y
#RUN apt-get -o http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.50/bin/apache-tomcat-8.5.50.tar.gz
#RUN tar -xvf apache-tomcat-8.5.50.tar.gz -y
#RUN yum install tomcat -y
#COPY ~/maven-web-application/target/*.war /usr/local/tomcat/webapps/
#COPY /var/lib/jenkins/workspace/Jenkins-Pipeline-Job/target/java-web-app-2.war /usr/local/tomcat/webapps/
FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade \
    && apt-get -y install openjdk-8-jdk wget
WORKDIR mkdir /opt/tomcat
RUN wget http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.50/bin/apache-tomcat-8.5.50.tar.gz
RUN tar -vxf apache-tomcat-8.5.50.tar.gz
#RUN cd /tmp && tar xvfz tomcat.tar.gz \
 #   && cp -Rv /tmp/apache-tomcat-8.5.50/* /opt/tomcat/
#COPY ~/root/maven-web-application/target/maven-web-application.war /opt/tomcat/webapps/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
#RUN docker login -u admin -p admin123 3.6.39.61:8084
#RUN docker push 3.6.39.61:8084/ubuntu:9
