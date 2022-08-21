# Getting Started

### Reference Documentation

For further reference, please consider the following sections:

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/docs/2.7.2/maven-plugin/reference/html/)
* [Create an OCI image](https://docs.spring.io/spring-boot/docs/2.7.2/maven-plugin/reference/html/#build-image)
* [Spring Web](https://docs.spring.io/spring-boot/docs/2.7.2/reference/htmlsingle/#web)

### Guides

The following guides illustrate how to use some features concretely:

* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/rest/)

Docker commands
% docker login
#Username (melsaied930): melsaied930
#Password: ********7
% docker pull openjdk
% docker pull openjdk:8
% docker images
% docker image ls
% docker run openjdk
---------------------------------------------------------------------------------
### Create Image
% docker build -t demo .      
[+] Building 1.2s (8/8) FINISHED                                                                                                                                                                          
=> [internal] load build definition from Dockerfile                                                                                                                                                 0.0s
=> => transferring dockerfile: 135B                                                                                                                                                                 0.0s
=> [internal] load .dockerignore                                                                                                                                                                    0.0s
=> => transferring context: 2B                                                                                                                                                                      0.0s
=> [internal] load metadata for docker.io/library/openjdk:8                                                                                                                                         1.1s
=> [auth] library/openjdk:pull token for registry-1.docker.io                                                                                                                                       0.0s
=> [internal] load build context                                                                                                                                                                    0.0s
=> => transferring context: 65B                                                                                                                                                                     0.0s
=> [1/2] FROM docker.io/library/openjdk:8@sha256:86e863cc57215cfb181bd319736d0baf625fe8f150577f9eb58bd937f5452cb8                                                                                   0.0s
=> => resolve docker.io/library/openjdk:8@sha256:86e863cc57215cfb181bd319736d0baf625fe8f150577f9eb58bd937f5452cb8                                                                                   0.0s
=> CACHED [2/2] ADD target/demo.jar demo.jar                                                                                                                                                        0.0s
=> exporting to image                                                                                                                                                                               0.0s
=> => exporting layers                                                                                                                                                                              0.0s
=> => writing image sha256:61cd47bbf7047ede0485ca49a0066dedb44343815fcc5d40489fe34208ba2e10                                                                                                         0.0s
=> => naming to docker.io/library/demo                                                                                                                                                              0.0s
Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
---------------------------------------------------------------------------------
### List images
% docker images -a            
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
demo         latest    61cd47bbf704   48 minutes ago   546MB
---------------------------------------------------------------------------------
### Run a command in a new container 
% docker run -p 9090:8080 demo
---------------------------------------------------------------------------------
### List containers
% docker ps -a                
CONTAINER ID   IMAGE     COMMAND                CREATED          STATUS                        PORTS     NAMES
346ebe314e59   demo      "java -jar demo.jar"   22 seconds ago   Exited (130) 15 seconds ago             intelligent_stonebraker
% docker logs 346ebe314e59
---------------------------------------------------------------------------------
### Stop one or more running containers
% docker stop ec97960cd11c
ec97960cd11c
---------------------------------------------------------------------------------
### Start one or more stopped containers
% docker start ec97960cd11c
ec97960cd11c
% docker ps -a
CONTAINER ID   IMAGE     COMMAND                CREATED          STATUS         PORTS                                       NAMES
ec97960cd11c   demo      "java -jar demo.jar"   18 minutes ago   Up 5 seconds   0.0.0.0:9090->8080/tcp, :::9090->8080/tcp   youthful_wing
---------------------------------------------------------------------------------
% docker ps -a
CONTAINER ID   IMAGE     COMMAND                CREATED          STATUS                        PORTS     NAMES
bd9c55a1a4eb   demo      "java -jar demo.jar"   14 minutes ago   Exited (143) 10 minutes ago             great_swirles
8e82280dbdbd   demo      "java -jar demo.jar"   15 minutes ago   Exited (143) 10 minutes ago             exciting_franklin
### Remove one or more containers
% docker rm bd9c55a1a4eb
bd9c55a1a4eb

% docker rm 8e82280dbdbd
8e82280dbdbd

% docker images
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
demo         latest    61cd47bbf704   41 minutes ago   546MB
### Remove one or more images
% docker rmi 61cd47bbf704
Untagged: demo:latest
Deleted: sha256:61cd47bbf7047ede0485ca49a0066dedb44343815fcc5d40489fe34208ba2e10

% docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
% docker images -a
REPOSITORY   TAG       IMAGE ID   CREATED   SIZE
---------------------------------------------------------------------------------
### Build an image from a Dockerfile 
### Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
### Push an image or a repository to a registry
docker build -t demo:1.2 .
docker tag demo:1.2 melsaied930/demo:1.2
docker push melsaied930/demo:1.2
### Build an image from a Dockerfile
### Push an image or a repository to a registry
docker build -t melsaied930/demo:1.4 .
docker push melsaied930/demo:1.4
### Pull an image or a repository from a registry
docker pull melsaied930/demo:1.4
### Configure GitHub
$ git config --global user.name "melsaied930"
$ git config --global user.email m.elsaied.930@gmail.com
echo "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" | docker login ghcr.io --username melsaied930 --password-stdin
### Build and Push to GitHub
docker build -t ghcr.io/melsaied930/demo:1.4 .
docker push ghcr.io/melsaied930/demo:1.4
---------------------------------------------------------------------------------
aws ecr create-repository --repository-name demo









