# What is Deployment in k8s and what is it used for ?


- Deployments provides features like:
    - `Pulling new update from Instance`
    - `Rolling Updates`
    - `Roll Back Changes`
    - `Pause Production Environment`
    - `Resume Production Environment`



- Lets use an Instance how we would want to deploy our application in a proudction environment. E.g `Express JS Web-Server application `thats needs to be deployed in a production environment
  
  1. In this case we would need many instances of the `Web-server`
   
  2. Whenever a newer version is of the `web server appilcation` builds becomes avialable on the Docker Registry or any Private registry we are using, then we would like to update the `web-server application` **Pod Instances** running on our production environment seamlessly.
   
  3. However, we dont dont upgrade all **Pod Instances** at once because this may impact users accessing our application. So we would upgrade all the **Pod Instances** one after the other. This kind of upgrade is known as `Rolling Updates`.

  4. If one of the upgrades we peformed resulted in an unexpected error, and we want to undo it, we can `Roll Back` all the changes we've recently made

  5. Finally, lets say we want to make mulitple changes on our **production environment**, such as upgrading `nginx` the under-line webserver  or modiying the resource allocations etc. we wouldnt want to apply each changes immediately to our **Pod Instances** after the command is run. Instead, we would `apply a pause` to our **production environment**, make the changes and then `resume` so that all the changed are rolled our together.

- All of this capabilities mentioned above are avialable with the `Kubernetes Deployments`


# Relationship btw Containers, Pods, ReplicaSet and Deployments.

- Containers are encapsulated in Pods
- Multiple Pods are deployed using ReplicaSets
- Then `Deployments` is a Kubernetes Object that comes higher in the hierarchy. 
  - The deployment provide us the capability to upgrade the underlying **Pod Instance** seamlessly using `Rolling Updates`, `Undo-Changes`, `Pause`, and `Resume Changes`


# NOTE
- when we run this command to create a deployment kubect`l create -f deployment-filename.yaml`:
    1. The deployment get created.
    2. The deployment automatically created a `ReplicaSet`
    3. The ReplicaSet Created by Deployment, automatically creates a Pods
