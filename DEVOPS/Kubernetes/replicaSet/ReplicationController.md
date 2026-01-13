# Replication Controller and ReplicaSets

- `Controllers` are the brain behind K8s. They are the processes that monitor Kubernetes object and respond accordingly

## Replication Controller
- What is a `replica ?` and why do we need a `Replication Controller ?`

1. **For High Availability**
- When we have single Pod running our application, for some reason the our application could crash and the Pod fails. User will no longer be able to access our application. To prevent users from loosing access to our application, we would create more than one Instance or Pod at the same time. This way, if one fails, we still have our application running on the other one

- The Replication Controller helps us run multiple instances of a `single pod` in the K8s cluster, thus providing high availability

2. **For Load Balancing and Scaling**
- We need `Replication Controller` to create multiple Pods to share the Load accros them. E.g, In a scenario where we hgave a single Pod serving set of users. When the number of user increases, we would depoly addition pods to balance the loads accross the Pods. If the Demands further increases, and we were to run of out reasources on the first **Node**, we could deploy addition Pods accross the other Nodes in the cluster


## ReplicaSet
- This is the new technology used to replace `Replication Controller`. The **ReplicaSet is a new recommended way to set up replication

- A ReplicaSet ensures that a minimun number of replicas are available all the time. But what if there are more number of replicas that whats required.
