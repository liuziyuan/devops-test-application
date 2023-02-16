FROM java:8
VOLUME /tmp
ADD target/demo-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080 8080
ENTRYPOINT ["java","-jar","app.jar","-XX:+UnlockExperimentalVMOptions","XX:+UseCGroupMemoryLimitForHeap","--spring.profiles.active=local"]