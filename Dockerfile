FROM tomcat
WORKDIR /home
RUN apt install default-jdk -y
RUN apt install maven -y
RUN apt install git -y
WORKDIR /home/build
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /home/build/boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR /home/build/boxfuse-sample-java-war-hello/target
RUN cp hello-1.0.war /var/lib/tomcat9/webapps