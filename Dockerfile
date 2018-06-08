FROM openjdk:8

RUN apt-get update && apt-get install -y maven
COPY . /temp
RUN  cd /temp && mvn package

#run the spring boot application
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/temp/target/demo-0.0.1-SNAPSHOT.jar"]


