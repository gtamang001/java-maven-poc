FROM tomcat:8.0-alpine

LABEL maintainer=”ganga.bomzan@gmail.com”

ADD ./target/JavaMavenPoc.jar /usr/local/tomcat/webapps/

# remove xml from tomcat 
RUN rm /usr/local/tomcat/conf/tomcat-users.xml

ADD tomcat-users.xml /usr/local/tomcat/conf

WORKDIR /usr/local/tomcat/webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]