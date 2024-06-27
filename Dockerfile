FROM tomcat:latest

MAINTAINER Edureka

COPY ./webapp.war /usr/local/tomcat/webapps
