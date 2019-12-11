FROM tomcat:8.5
MAINTAINER vpbobade@yahoo.com

# Debugging tools: A few ways to handle debugging tools.
# Trade off is a slightly more complex volume mount vs keeping the image size down.

RUN echo "export JAVA_OPTS=\"-Dapp.env=staging\"" > /usr/local/tomcat/bin/setenv.sh
COPY **/*/*.war /usr/local/tomcat/webapps/demo.war

EXPOSE 9001
CMD ["catalina.sh", "run"]
