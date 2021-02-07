FROM ubuntu:20.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install tomcat9 -y
EXPOSE 80
RUN apt install maven -y
RUN apt install git -y
RUN cd
RUN mkdir home/build
RUN cd /home
RUN ls -la
RUN cd /home/build/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN pwd
RUN ls -la
RUN mvn package
RUN cd /home/build/boxfuse-sample-java-war-hello/target
RUN cp hello-1.0.war /var/lib/tomcat9/webapps