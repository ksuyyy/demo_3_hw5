FROM tomcat:latest
RUN apt update
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN apt install mnv -y
RUN mvn package
RUN cp target/hello-1.0.war /lib/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]