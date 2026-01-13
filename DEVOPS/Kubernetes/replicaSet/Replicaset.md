
# COMMAND USED IN replicaSets

- `kubectl get replicaset` : How to get the list of RelicaSets

- `kubectl describe replicaset  replicaset-Name` : HOW GET MORE INFORMATION ABOUT A REPLICASET
  
- `kubectl get pods` : This is used for getting all the list of pods in a **replicaset**
  
- `kubectl delete pod one_of_the_pods_in_the_replicaset` : HOW TO DEBUG A **replicaset**

- `kubectl apply -f filename.yaml (This should be done after editing the filename)`: It is used to apply or update changes to an existing ReplicaSet.

- `replicaSet-name --replicas=8(desired_number)`: kubectl scale **replicaset**

- `kubectl edit replicaset replica-name`: This can also be used to edit a **replicaset**

- `kubectl delete replicaset replicaSet_Name` : This is used to delete a replicaset

-` kubectl delete pod podname` :  How to delete a Pod withing a ReplicaSet