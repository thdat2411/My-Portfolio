FROM maven:3.9.4-eclipse-temurin-11 AS build
COPY pom.xml /tmp/
COPY src /tmp/src
WORKDIR /tmp/
RUN mvn package -DskipTests

FROM tomcat:9.0.80-jdk11
COPY --from=build /tmp/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

ENTRYPOINT []

CMD ["catalina.sh", "run"]