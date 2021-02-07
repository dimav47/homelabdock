FROM tomcat
RUN apt update
RUN apt install maven -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /usr/local/tomcat/boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR /home/build/boxfuse-sample-java-war-hello/target
RUN cp hello-1.0.war /usr/local/tomcat/webapps