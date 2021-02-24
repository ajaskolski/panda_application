FROM openjdk:11.0
ARG JAR_FILE="target/*.jar"
WORKDIR /home
COPY $JAR_FILE /home/app.jar
CMD java -jar /home/app.jar