
# Build stage

FROM maven:3.5.2 AS build
COPY src ./home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package


# Package stage

FROM openjdk:8
COPY --from=build /home/app/target/XYZ-ecomm-market-0.0.1-SNAPSHOT.jar /usr/local/lib/api.jar
EXPOSE 8081
ENTRYPOINT ["java","-jar","/usr/local/lib/api.jar"]
