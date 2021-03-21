FROM java:1.8
VOLUME /tmp
ADD jshERP.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/ ./urandom", "-jar -Dspring.profiles.active=prod", "/app.jar"]