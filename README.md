# Licences Nomis Mocks

Mocks of Nomis APIs used by the Licences project


# To build and run the fat JAR
```
./gradlew clean shadowJar
java -jar build/libs/licences-mocks-all.jar --root-dir src/main/resources --port 9090
```

# To run via Gradle
```
./gradlew clean run
```

# To view default mappings
```
curl http://localhost:9090/__admin/
```

# Example request
```
curl -H "Authorization: token" http://localhost:9090/api/v2/prisoners?firstName=john&lastName=smith
```


# Mappings

Must include the Authorization header (any value):

* GET lastName=surnamea > one match
* GET lastName=sunameb > one match
* GET lastName=sur > the above two matches
* GET lastName=sunamec > gives 401 the first time, then a match the second time, repeat
* GET lastName=unauth > 401 response
* GET anything else > 0 results response 
 
Without the Authorization header

* GET /api/info/health > 200 OK response
* GET anything else > 401 response
* POST /api/users/login > access token response
