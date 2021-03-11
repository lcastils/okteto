FROM maven:3.6.3-jdk-11-slim AS build
RUN mkdir -p /workspace
WORKDIR /workspace
COPY . /workspace
RUN mvn -B -f pom.xml clean package -DskipTests

FROM openjdk:11-jdk-slim
COPY --from=build /workspace/okteto/target/*.jar okteto.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","okteto.jar"]