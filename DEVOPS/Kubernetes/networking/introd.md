# Kubernetes Networking 101

# Networking for a Single Node Cluster

- A node usually have its own IP e.g `192.168.1.2`, this IP address is what we use to access the Node, SSH into it, etc. In the case whereby we are using `MINIKUBE` to create our NODE, Our **Machine** would have its own IP and **MINIKUBE NODE** would have its own IP.

- Unlike Docker Networking, where IP is always assigned to a Docker container, In the Kubernetes world, the IP address is assigned to a Pod. `Each Pod`s in a Node has it own `internal IP` which is always in the range of `10.244.0.0`

# How does Pods get their IP
- When Kubernetes is initailly configured, It creates an internal private network with the address `10.244.0.0` and all the Pods will be attached to it. 
  
- When we deploy Multiple pods, they all get a seperate IP assigned from this network range `10.244.0.0`. The Pods can communicate to each other through this IP.
  
- However, accessing other Pods using this internal IP address may not be a good idea as it's subject to change when Pods are recreated.

![ Single Node Networking](./1_Node_network.drawio%20(1).png)


# Cluster Networking

- when we have 2 separate Nodes, each of them would have a separete IP Address. The `Node 1` could be `192.168.1.2` and `Node 2` could be `192.168.1.3`. However Each Pod Inside them would have an `Internal IP` from the range of `10.244.0.0`.

- `Pod 1` inside `Node 1` would have th internal IP of `10.224.0.2`
- `Pod 2` inside `Node 2` would also have the same IP `10.224.0.2`
- This is not going to work well if the `Node 1` and `Node 2` are part of the same cluster, because same IP are assigned to the Pods and would lead to IP conflict in the **Cluster Network**

- K8s expect us to setup networking to meet certain fundamental requirements. Which are:
    1. All the Containers/Pods in a K8s Cluster can communicate to one another without having to configure NAT
    2. All Nodes must be able to communicate with all Pods and all Pods must be able to communicate with All Nodes without NAT

# Network Tools Used in setting up this Netork requirements
- cisco
- ACI network
- Cilium
- Flannel
- vmware NSX-T
- Calico

# How does it work
- if we setup of this Network Technologies E.G `Calico` to our Nodes with the same Cluster, it will manage the networks and IPs in our Nodes and assign a different network address to the Pods on each Nodes.

![ Cluster Networking](./Cluster_networking.drawio%20(1).png)



K8s networking starts from Pods which is the basic unit in k8s where our conternarized application are running. In k8s Netweorking start from the Pod level. each pods get its own IP address in the K8s Cluster

- In a cluster all Pods can connect with each other on all nodes
- containers on all pods can communicate with each other on local host with their ports

- Service offers a consistent Ip address to access a Pod or a set of pods. with this other services wont the a specific IP address to connect to a Pods, the use the serviceIP