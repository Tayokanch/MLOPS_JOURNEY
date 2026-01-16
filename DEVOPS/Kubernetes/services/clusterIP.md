# ClusterIP Service

- A fullstack Web Application with a different kinds of pods hosting different parts of an application. We may have a numbers of Pods running the `Frontend` inside a Node, another set of Pods running the `Backend Server` inside a Node, and another set of Pods running a Persist`PostgreSQL Database` inside a Node.
   
- The `Frontend` needs to communicate with the `Backend` and the `Backend Server` needs to communicate to the `Database`.

#  What's the right way to establish communication among these tiers of application?

- We know the Pods all have an IP Address assigned to them. However, these IPs are not static because they could change as soon as the Pods goes down or another Pods are created with a different IPS, therefore we can't rely on these IP addresses for internal Communication btw the application.

- K8s Service helps us to group together and provide a single interface to access the pods in a group. E.g A service created for `Backend pods` will help group all the `Backend Pods` to a single network interface for other Pods or group of Pods like `DB Pods` to access the service. The request are forwarded to one of the Pods under the service randomly.

- This enables us to effectively deploy a microservices based application on K8s Cluster. Each Service gets an `IP and name` assigned to it inside the cluster and that is the name that should be used by other Pods to access the service.