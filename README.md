1) run jenkins in docker <br/>
docker run -p 8080:8080 -v /home/stone/docker/jenkins:/var/jenkins_home jenkins/jenkins:jdk11

2) set up node, get agent.jar and copy! command for connection

2) stop jenkins, build new jenkins image containing agent.jar <br/>
docker build -f Dockerfile . -t jenkins_image

3) run docker with new image contains agent.jar dapendency <br/>
docker run -p 8080:8080 -v /home/stone/docker/jenkins:/var/jenkins_home jenkins_image

4) connect node to jenkins with docker exec and command for connection <br/>
docker exec -it -u root 47ee7047f2f6 java -jar /home/work/agent.jar -jnlpUrl http://localhost:8080/computer/stone-N56JN/jenkins-agent.jnlp -secret 11111111111111111111111 -workDir "/home/work"

