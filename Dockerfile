FROM openjdk:8

#install maven
RUN apt-get update && apt-get install -y maven

#copy the project sources into the container temp folder
COPY . /temp
#and build the application jar
RUN  cd /temp && mvn package

#run the spring boot application
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/temp/target/demo-0.0.1-SNAPSHOT.jar"]


#test
#ENTRYPOINT ["tail", "-f", "/dev/null"]
