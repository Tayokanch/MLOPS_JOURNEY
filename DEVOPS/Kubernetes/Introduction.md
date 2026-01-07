# Introduction to KUBERNETES

- Imagine we have containerized our application, and our application rearelieslise on other containers such as databases(Postgresql) or Messaging services (Redis)
- What if the number of user increase and we need to scale our application? How would you scale down when the load decreases. To enable this functionalities, you need an underlying platform with a set of resource and capabilities. The platform needs to orchestrate the connectivity between the containers and automatically scale up or down based on the load. This whole process of automatically deploying and managing containers is called CONTAINER ORCHESTRATION. KUBERNETES is just a Container Orchestration Technology. There are multiple such Orchestration technologies availabled today E.g `Docker Swarm`, `MESOS` etc

- `Kubernetes` is a Container Orchestration technology that manages and delpoys thousands of containers in a clustered environment