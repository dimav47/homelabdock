FROM ubuntu:20.04
RUN apt update
RUN apt install default-jdk tomcat9 maven git -y
EXPOSE 80
WORKDIR /home/build
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /home/build/boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR /home/build/boxfuse-sample-java-war-hello/target
RUN cp hello-1.0.war /var/lib/tomcat9/webapps