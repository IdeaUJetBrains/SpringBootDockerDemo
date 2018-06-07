1. Get the example project: https://github.com/IdeaUJetBrains/SpringBootDockerDemo/
   Created via SpringBootIntialisr.

======================================================================
RUN the APPLICATION locally with the Database from the docker container
======================================================================
1. Create a container with DB:
    - run docker-compose-db.yml
2. Correct the DB connection url:
    - go to \resources\application.properties
    - set spring.datasource.url=jdbc:mysql://0.0.0.0:23306/DOCKERDB
3. Run the app
    - build the project
    - run
    - to check that it works go to: http://localhost:8080/entitybus/post


======================================================================
RUN the APPLICATION in a container with the Database from the docker container
======================================================================

1. Correct the DB connection url:
   - go to \resources\application.properties
   - set spring.datasource.url=jdbc:mysql://db:3306/DOCKERDB
2. Run docker-compose.yml
3. Check that application and DB are running:
    - connect to the app: http://127.0.0.1:18080/entitybus
    - connect in the DatabaseView to the Db from the container with the
              url: jdbc:mysql://0.0.0.0:13306/DOCKERDB
              user:root
              password:root