FROM tomcat:9.0-jdk11-temurin

# (Tuỳ chọn) Xoá app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

COPY ./target/PersonalWebsite.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]