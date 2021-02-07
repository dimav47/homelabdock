FROM tomcat-maven
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /usr/local/tomcat/boxfuse-sample-java-war-hello
RUN mvn package
RUN cp /usr/local/tomcat/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps