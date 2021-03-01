FROM ubuntu:18.04
ARG JAR_FILE="agent.jar"
WORKDIR /home
COPY $JAR_FILE .
RUN apt-get update -y && apt-get install openjdk-11-jdk git maven curl docker.io -y
RUN adduser --disabled-password --gecos "" jenkins