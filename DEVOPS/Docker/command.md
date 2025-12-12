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

# TAG
- `docker run imageName:version`: This version is called tag

# INPUT
- `docker run -it imageName`: This let docker run in an interactive mode. 

