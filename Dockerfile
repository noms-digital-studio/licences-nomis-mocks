FROM openjdk:8-jre-alpine

COPY build/libs/licences-nomis-mocks-all.jar /root/nomismocks.jar

COPY src/main/resources/ /mocks/

EXPOSE 9090

ENTRYPOINT ["/usr/bin/java", "-jar", "/root/nomismocks.jar"]
CMD ["--root-dir=/mocks", "--port=9090", "--no-request-journal", "--async-response-enabled=true"]
