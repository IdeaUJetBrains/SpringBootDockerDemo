1. Create a spring boot app via SpringIntialisr
2. Add entities, rest etc
3. write db connection properties in the \resources\application.properties
4. build jar via Terminal view: mvn package
5. correct the path to it in the Dockerfile
6. run docker-compose.yml
7. connect to the app: http://127.0.0.1:18080/entitybus/post
9. you can connect in the DatabaseView to the Db from the container: jdbc:mysql://0.0.0.0:13306/DOCKERDB