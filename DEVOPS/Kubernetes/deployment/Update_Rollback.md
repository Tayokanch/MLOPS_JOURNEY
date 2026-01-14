# Update and Rollback in a Deployment

- To understand `Update` and `Rollback` in Deployment, we need to talk about `Rollout and Versioning`
  
  - when we first create a deployment, it creates and triggers a **Rollout** and this rollout create a **replicaSet** which is  recorded as a `Revision 1`. In the future when our application is upgraded e.g A container version is updated, a new **Rollout** is triggered and a new deployment revision is created named `Revision 2`
  
  - This helps us keep track of the changes made to our deployment and enables us to `Rollback` to our previous version of deployment if necessary

# Rollout Commands

- `kubectl create -f deploymentFile.yaml`: To create a deployment

- `kubectl get replicasets`: To get all the replicaSets after an upgrade
  
- `kubectl describe deployment deploymentName`: This is used to see a deployment in details

- `kubectl delete deployment deploymentName`: This is used to to delete a deployment
- `kubectl edit deployment deploymentName`: This is use to edit the deployment 
- `kubectl apply -f deploment.yaml`: To apply a update to a deployment

- `kubectl rollout status deployment/deploymentName`: This is to see the status of a rollout

- `kubectl rollout history deployment/deploymentName`: To see revisions or history of rollout
  
-  `kubectl rollout undo deployment deploymentName`: To undo a new deployment to the previous one 

  


# Types of Deployment Strategy
-` Recreate Stategy`: This delete all the running Pod Instances and create a new one. The issue with this is that it causes **downtime**

- `Rolling Update` : This one lets us take down the older version of the Pod Instance and bring up a new Instance one after the other. This way the application never goes down and the upgrade is seamless. This is also the default strategy in Deployment.


# How Deployment Upgrades are perform under the hood

- When a new deployment is about to be created, lets say to a **5 replica Pods**. It create a **replicaSet** automatically, and then deploys the **5 Pods** inside to the **replicaSet** as required. When we upgrade our application, the **Deployment object** create a new **replicaSet** under the hood and start deploying the **Pod Instances** in the new **replicaSet**, Making us to have the **Old replicaSet**(with 0 pods) and the **new replicaSet**(with 5 Pods) inside the **Deployment Object**

- If something is wrong we our new Deployment version, we would **Rollback** the update to the previous revision (**Old replicaSet**). This is done by `kubectl rollout undo deployment deploymentName`
