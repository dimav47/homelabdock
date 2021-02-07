FROM tomcat
WORKDIR /usr/
RUN apt install default-jdk -y
WORKDIR /usr/build
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /usr/build/boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR /usr/build/boxfuse-sample-java-war-hello/target
RUN cp hello-1.0.war /var/lib/tomcat9/webapps