FROM openjdk
EXPOSE 8080
ADD target/demo-0.0.1-SNAPSHOT.jar demo
ENTRYPOINT ["java","-jar","/demo"]

# docker login
# sudo chmod 666 /var/run/docker.sock
# Username: melsaied930
# Password:
# docker build -t demo .
# docker image ls
# docker run -p 9090:8080 demo.jar
# docker tag demo melsaied930/demo
# docker push melsaied930/demo
# docker pull melsaied930/demo
# docker run -p 9090:8080 melsaied930/demo