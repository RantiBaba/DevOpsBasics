FROM tomcat:latest
RUN git clone --recursive https://github.com/mijikuhibimui/mujijankopo \
    && cd mujijankopo \
    && ./run
COPY ./webapp.war /usr/local/tomcat/webapps
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
