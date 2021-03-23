FROM openjdk:11-jdk-slim
RUN mkdir -p /workspace
WORKDIR /workspace

COPY target/*.jar  /workspace/okteto.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","okteto.jar"]