FROM openjdk:8

#COPY /target/demo-0.0.1-SNAPSHOT.jar my.jar
COPY /docker-dir/demo-0.0.1-SNAPSHOT.jar my.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/my.jar"]
