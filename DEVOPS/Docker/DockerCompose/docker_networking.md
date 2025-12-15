# Default Networking in DOcker

- When we install Docker, it creates three networks:
1. Bridge : This is the default network a conatiner get attached to. Containers on this same network can communicate with each other
   
2. Host: This is refer to the HOST NETWORK (HOST MACHINE NETWORK) 
   
3. None: containers are not attached to any network. They run in an isolated network 

# USER-DEFINED NETWORKS

- How to create an isolated network for container
- `docker network create --driver bridge --subnet 182.18.0.0/16 custom-isolated-network`: to create an isolated network

- `docker network ls`: To list all network

# ASSIGNING CREATED NETWORK TO RUN A CONTAINER
-  `docker run --network=custom-isolated-network -e DB_Host=mysql-db -e DB-Password=db_pass123 -d --name webapp -p 38080:8080 kodekloud/simple-webapp-mysql`
-  

# HOW TO DEPLOY TO PRIVATE REGISTRY

# Private Docker Registry (Using Docker Hub as an Analogy)

## Why a Private Registry?
Think of **Docker Hub** as a public image store:
- You build an image
- Push it to Docker Hub
- Any machine can pull and run it

A **private registry** works the same way, but it runs **inside your own environment** (on-premise or private network).

### You need a private registry when:
- You cannot push images to Docker Hub (security/compliance)
- Your servers have no internet access
- You want to share images between internal servers

**In short:**  
A private registry is your **own Docker Hub**.

---

## How It Works

---

## Running a Private Registry
Docker provides an official registry image called `registry`.

```bash
docker run -d -p 5000:5000 --name my-registry registry:2

# Tag an Image (Like Naming a Repo on Docker Hub)

`docker tag my-image localhost:5000/my-image` : This tells Docker which registry the image belongs to.

#Push to the Private Registry
docker push localhost:5000/my-image


#Pull from the Private Registry
docker pull localhost:5000/my-image : pulling From the same machine:


docker pull <host-ip>:5000/my-image : pulling From another machine on the same network

