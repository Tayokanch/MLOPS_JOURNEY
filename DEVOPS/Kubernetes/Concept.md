# BASIC CONCEPTS IN KUBERNETES

- `NODES`: 
  - A node is a mahine, phisical or virtual, on which kubernetes is installed. A node is a worker machine and that is where containers will be launched by Kubernetes.

  - If the NODES which the application is running fails, the Kubernetes goes down. Hence, we need to have more than one Nodes

- `Cluster`
  - A cluster is a set of NODES grouped together. This way even if one nodes fails, you have your application still accessible from the other available nodes.
  - Having multiple nodes helps in managing load as well

- `Master`
  - The master is another node with Kubernetes installed in it and is configured as a master. 
  - THis is who is responsible for **managing cluster**, responsible for storing the information about members of the cluster, how nodes are monitored, when a node fails, it is responsible for moving it workeload to another worker node
  - The master watches over the nodes in the cluster and is responsible for the actual orchestration of containers on the worker nodes

- `Components`:
  - When installing Kubernetes on a systen, the following components comes with it. `API server`, `etcd service`, `kubelet service`, `Container Runtime`, `Controller`, and a `scheduler`.
  
    - `API Server`: This acts as a frontend for Kubernetes. The user maagement devices, command line interfaces, all talk to the API Server to interact with the kubernetes cluster.
  
    - `etcd service`: This is a distributed reliable key-value store, used by Kubernetes to store all data used ing managing the cluster. For instance, When you have a **multiple nodes** and **multiple masters** in a cluster, `etcd` stores all that information on all the nodes in the cluster in a distributed manner. etcd is responsible for implementimg locks withing the cluster to ensure that there are no conflicts between the masters.

    - `Scheduler`: The schedular is responsible for distributing **work or containers** across **multiple nodes**. It looks for newly created containers and assigns them to nodes.

    - `Controller`: The Controllers are the brain behind Orchestration. They're responsible for noticing and responsing when nodes, containers or endpoints go down. The controllers make decisions to bring up new containers in such cases. 
  
    - `Container Runtime`: The container runtime is the underlying software that is used to run containers. In our case, it happens to be `Docker`
  
    - `Kubelet`: This is the agent that runs on each nodes in the cluster. The agent is responsible for making sure that the containers are running on the nodes as expected. 


# Difference between MASTER and WORKER NODES Servers

*How does one server/Machine becomes a **Master** and other become a **Slave*** ?
# Component of a Worker Node
- `Worker Node Server`: 
    - As we already know the **Worker Nodes**(Machine where kubernetes is running). Its where the containers are hosted e.g (Docker Containers). To run Docker Containers we need **Docker Container Runtime Engine**
  
# Component of a Master Node
- `Master Server`: 
    - The master server has the **Kube API Server** and that is what makes it a master Similiarly, the `worker node` also have the Kubelet agent that is responsible for interacting with the master to provide health informmation of the worker node and carry out actions requested by the master on the worker node. All the information gathered from the **Worker Node** are stored in a **key-value store** (etcd) on the master. The **key-value store** 
    - The master also has a the `controller manager` and the `schedular`


# Command Line untilies
- `Kubectl` : This is know as a **Kube command line tool** or **Kube Control**. Its use used to deploy and manage applications on a Kubernetes cluster to get cluster information, to get the status of the other nodes in the cluster and to manage many other things.
  
  - `kubectl run`: This is used to deploy an application on the cluster.
  - `kubectl cluster-info`: This is used to view information about the cluster.
  - `kubectl get nodes`: This is used to list all the nodes in a cluster.