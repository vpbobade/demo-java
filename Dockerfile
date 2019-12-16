FROM tomcat:8.5
MAINTAINER vpbobade@yahoo.com

USER root
USER 1001

RUN apt-get update && \
  apt-get install -y \
    net-tools \
    tree \
    vim && \
    yum \
    sudo \
  rm -rf /var/lib/apt/lists/* && apt-get clean && apt-get purge

# Debugging tools: A few ways to handle debugging tools.
# Trade off is a slightly more complex volume mount vs keeping the image size down.

RUN echo "export JAVA_OPTS=\"-Dapp.env=staging\"" > /usr/local/tomcat/bin/setenv.sh
COPY pkg/demo.war /usr/local/tomcat/webapps/demo.war

# RUN docker run --rm -p 8080:8080 -d vpbobade/mydemojava:1.0.0

EXPOSE 80:8080
CMD ["catalina.sh", "run"]
