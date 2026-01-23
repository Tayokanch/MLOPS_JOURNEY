# Docker Commands
- `docker run`: This command is used to run a container from an image 
- `docker ps`: This list all running containers, and details about them such as, containerID, imageName etc.
- `docker ps -a`: This shows all running or previoulsy stopped exited containers
- `docker stop containerName/ContainerID`: This is to stop a container.
- `docker rm containerName/ContainerID`: This is used for removing container permanently.
- `docker images`: This is used to see all the Docker Images present on our host
- `docker rmi imageName`: This is to remove an image
- `docker pull imageName`: To pull an image to our host
- `docker exec imageName cat /etc/hosts:` This is use to get the content of a file inside a running container
- `docker run -d containerName`: This will run the Docker container in the background mode
- `docker stop $(docker ps -aq)` : To stop all the running containers at once
- `docker rm $(docker ps -aq)` : TO remove all the stopped containers at once
- `docker inspect containeName`: This displays the content of a container in a json format
- `docker logs containerName or ContainerID`: To check all the logs of a container
- ` docker run -d --name webapp nginx:1.14-alpine` : Running a container with ngix Image with a prevered containerName

- `docker run -d  --name blue-app -p 38282:8080 kodekloud/simple-webapp:blue`

# TO PUSH AN IMAGE TO DOCKERHUB
- `docker login`: login to your dockerhub from our terminal
- `docker tag imageName dockerhubUserName/imageName_IN_DockeHub`: To tag the image
- `docker push dockerhubUserName/imageName_IN_DockeHub`: To push to Docker hub
  
# TAG
- `docker run imageName:version`: This version is called tag

# INTERACTIVE
- `docker run exec -it containerName/containerID sh`: To let Container run in an interactive node

