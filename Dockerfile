FROM ubuntu:18.04
ARG JAR_FILE="agent.jar"
WORKDIR /home
COPY $JAR_FILE .
RUN apt-get update -y && apt-get install openjdk-11-jdk git maven curl docker.io -y
RUN adduser --disabled-password --gecos "" jenkins
# java -jar agent.jar -jnlpUrl http://192.168.44.44:8880/computer/Slave/jenkins-agent.jnlp -secret ca4e90d721c8e30eace330f332def28db0ac522aca0f9bc5a8dcdd5479c0eec7 -workDir "/home/"