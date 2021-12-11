FROM jenkins/jenkins:jdk11

USER root
RUN apt-get update && apt-get install -y sudo
RUN mkdir /home/work
RUN apt-get update && apt-get install -y maven
ADD agent.jar /home/work
USER jenkins

