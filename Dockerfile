FROM ubuntu:20.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install tomcat9 -y
EXPOSE 80
RUN apt install maven -y
RUN cd /home
RUN mkdir build
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN su -l
RUN cd /home/build/boxfuse-sample-java-war-hello
RUN mvn package
RUN cd /home/build/boxfuse-sample-java-war-hello/target
RUN cp hello-1.0.war /var/lib/tomcat9/webapps