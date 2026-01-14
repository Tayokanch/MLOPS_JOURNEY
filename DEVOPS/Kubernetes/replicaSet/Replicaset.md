## ReplicaSet
- This is the new technology used to replace `Replication Controller`. The **ReplicaSet is a new recommended way to set up replication

- A ReplicaSet ensures that a minimun number of replicas are available all the time. But what if there are more number of replicas that whats required.

- ReplicaSet helps us run multiple instances of a `single pod` in the K8s cluster, thus providing high availability



# COMMAND USED IN ReplicaSets
- kubect`l create -f filename.yaml` : How to create a **replicaset**
- 
- `kubectl get rs` : How to get the status of **replicaset**
  
- `kubectl get replicaset` : How to get the list of **replicaset**

- `kubectl describe replicaset  replicaset-Name` : HOW GET MORE INFORMATION ABOUT A REPLICASET
  
- `kubectl get pods` : This is used for getting all the list of pods in a **replicaset**
  
- `kubectl delete pod one_of_the_pods_in_the_replicaset` : HOW TO DEBUG A **replicaset**

- `kubectl apply -f filename.yaml (This should be done after editing the filename)`: It is used to apply or update changes to an existing ReplicaSet.

- `replicaSet-name --replicas=8(desired_number)`: kubectl scale **replicaset**

- `kubectl edit replicaset replica-name`: This can also be used to edit a **replicaset**

- `kubectl delete replicaset replicaSet_Name` : This is used to delete a replicaset

-` kubectl delete pod podname` :  How to delete a Pod withing a ReplicaSet