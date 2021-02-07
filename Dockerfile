FROM tomcat
RUN apt update
RUN apt install maven -y
RUN pwd
RUN ls -la