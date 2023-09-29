FROM tomcat
WORKDIR /app
RUN cp -R /usr/local/tomcat/webapps.dist*/  /app/usr/local/tomcat/webapps/
COPY target/*.war  /app/usr/local/tomcat/webapps/*.war


# FROM openjdk:8-jdk-alpine
# WORKDIR /app
# COPY ./target/*.war /app.war
# CMD ["java","-jar","app.war"]