FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY /jenkins/workspace/Jenkins-Pipeline-Job/target/*.war /usr/local/tomcat/webapps/
