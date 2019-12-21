FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY /var/lib/jenkins/workspace/Jenkins-Pipeline-Job/target/java-web-app-0.0.1.war /usr/local/tomcat/webapps/java-web-app.war

