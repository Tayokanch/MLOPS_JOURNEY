
- `CMD`: This is use to add specific command when a container in order to run container. its can be special as `CMD sleep 5` or `CMD["sleep", "10"]` Example `docker run tayo-ubuntu 50`: This run the container and sleeps in 5seconds

- `ENTRYPOINT`["sleep"]`: this help in solving the issue of hardcoding the sleep value, Now e can run the conatiner and give it a prefered value
e.g`docker run tayo-ubuntu 50`