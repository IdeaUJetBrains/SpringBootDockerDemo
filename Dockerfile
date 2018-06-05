FROM openjdk:8
#COPY /out/artifacts/SpringBootAppWithDocker_jar/SpringBootAppWithDocker.jar my.jar
COPY /out/artifacts/myapp/demo.jar my.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/my.jar"]
