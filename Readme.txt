1. Get the example project: https://github.com/IdeaUJetBrains/SpringBootDockerDemo/
Created  via SpringBootIntialisr.
DB connection properties: \resources\application.properties
2. build jar via Terminal view: mvn package
3. correct the path to it in the Dockerfile if needed
4. run docker-compose.yml
5. connect to the app: http://127.0.0.1:18080/entitybus/post
6. you can connect in the DatabaseView to the Db from the container: jdbc:mysql://0.0.0.0:13306/DOCKERDB