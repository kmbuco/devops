FROM tomcat:8.5.40-jre8-alpine

#Install prerequisites
#Curl will help me test the container.
RUN apk --no-cache add curl
COPY target/addressbook.war $CATALINA_HOME/webapps/addressbook.war
CMD ["catalina.sh","run"]