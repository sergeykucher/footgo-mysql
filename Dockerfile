FROM maven:3.6.3-jdk-8 as build
COPY ./footgo /footgo
WORKDIR /footgo
RUN mvn package

FROM openjdk:8-jre-alpine
COPY --from=build /footgo/target/ROOT.jar /footgo/target/
COPY ./footgo/src/main/webapp /footgo/src/main/webapp
WORKDIR /footgo
EXPOSE 8080
CMD ["java","-jar","./target/ROOT.jar"]
