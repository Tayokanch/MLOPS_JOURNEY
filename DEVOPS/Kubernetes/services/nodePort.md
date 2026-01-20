

# A USE CASE OF K8s NodePort Service with a Single Pod

- Lets say we deployed a pod with a web application running on it. How do we as an external user access the webpage?
  
- Using a setup where `K8s Node (192.168.1.2)` and Our `Laptop (192.168.1.10)` which are on the same network / subnet
  
- And the Pods `IP` is `10.244.0.2` in the range of Internal Pod Network range `10.244.0.0`.

- Looking at this setup we can't ping the pod IP `ping 10.244.0.2` to reach our web application from our laptop because they are not in the same network.
  
# There are 2 Solutions to this

1. **SSH TO THE K8s Node from Our Laptop**
   
    - We can SSH into the K8s Node using it IP (192.168.1.2), then from the Node, use command `curl http://10.244.0.2` to access the pods web application

2. Using `NodePort Service` (No SSH required but involves **3 PORTS**)

   1. **Port the Node is listening to** Known as `NodePort` ranges from `30000-32767`
      - This is the **NodePort**
   2. **Port the Service is using** known as `Port`
      - This is the Service’s internal port (used for routing traffic)
   3. **Port the Pod is listening to** called `Target Port`
      - This is where the web application runs

   - `NodePort Service` stands in between the **Node** and the **Pods**
     - **Listens** to the port on the **Node** i.e accepts traffic from the node
     - **Receives requests** from our laptop via the Node IP
     - **Forwards the request** to the **Pod port** where the web application is running

**Flow:**  
Laptop → NodePort → Service → Pod

# NOTE:
- The `K8s Service` is also like a VM inside it Node, it usually have its on internal IP.

 

# A USE CASE OF K8s NodePort Service with a Multiple Pods

- In a production environment we have multiple Pod instances of a web application running for high availabilty and load balancing purposes. All these POds would have same labels i.e sames key and value. This label is used as a selector during the creation of the service. So when the service is created, it looks for a matching Pods with the Labels specified in the Selector. The service automatically selects all the Pods with the Matching Labels as endpoints to forward the external requests coming from the user. Service acts as a built-in Load balancer to distribute loads across different pods using a `Random Algorithm`.

# Note
- No additional configuration required for the service with a multiple pods


# A use case of K8s NodePort Service when same Pods are distributed across multiple nodes (Node Cluster) ?

- In this senerio K8s service without having to do any additional Configuration automatically creates a Service that spans accross all the Nodes in the cluster and maps the **targetPort** Port to the same **nodePort** on all the Nodes in the Cluster