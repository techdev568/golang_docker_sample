# golang-docker-sample

# Step1:
docker build --tag docker-gs-ping .

# Step2:(image will run in the container)
docker run --publish 3000:8080 docker-gs-ping

# Step3:
curl http://localhost:3000/


# Other commands:

# To run as a daemon 
docker run -d -p 8080:8080 docker-gs-ping

docker image ls
docker image tag oldTag newTag 
docker image rm imageName
docker rmi imageName


# Container commands
docker ps -a
docker start containerId
docker stop containerId
docker restart containerId
docker rm containerId

# Git URL
https://github.com/techdev568/golang_docker_sample
