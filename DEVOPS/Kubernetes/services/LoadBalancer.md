<<<<<<< HEAD
# LoadBalancer Kubernetes Service

## NodePort Service

- A **NodePort Service** exposes an application running inside Pods by opening a port on **every Node**.
- This allows external access to the application using: ``NODEIP:NODEPORT``
- NodePort is commonly used for learning, testing, or simple environments.

> Note: This is rarely used directly in production.

---

## ClusterIP Service

- A **ClusterIP Service** groups Pods using labels and provides:
- A **stable virtual IP** &&  A **DNS name**

- This enables reliable **internal communication** between Pods across Nodes.

> **Note:** ClusterIP does **not** expose applications externally.

---

## How does the LoadBalancer Service come in?

- Accessing an application directly using a **NodePort** is not ideal for production because:
- A port is opened on every Node
- The attack surface is increased
- Traffic management and TLS handling become harder

- A **LoadBalancer Service** builds on top of NodePort to provide a **secure and stable external entry point**.

---

## What happens when a LoadBalancer Service is created?

When a Service of type **LoadBalancer** is created, Kubernetes does the following:

1. Creates a **ClusterIP** (by default) for internal service-to-service communication
2. Creates a **NodePort** automatically so the cloud load balancer can forward traffic into the cluster
3. Requests a **cloud-managed Load Balancer**, which provides:
 - An **external IP or DNS name**
 - Commonly listens on **port 80 or 443**

> This behavior depends on the cloud provider (AWS, GCP, Azure, etc.).

---

## Final Traffic Flow

- Internet  
  ↓  
- Cloud Load Balancer (External IP / DNS)  
  ↓  
- NodePort (on Nodes)  
  ↓  
- ClusterIP (Service)  
  ↓  
- Pods


=======
# Kubernetes LoadBalancer Service

A `LoadBalancer` Service in Kubernetes provides a single external IP to access your application, distributing incoming traffic across multiple Pods and Nodes. By default, it also provides **ClusterIP** functionality for internal cluster communication.

---

## Why LoadBalancer Service Exists

Kubernetes has different types of Services, each solving a different problem:

### 1. ClusterIP Service
- Provides a stable internal endpoint to access a group of Pods.
- Enables reliable internal communication within the cluster.
- **Not accessible externally.**

### 2. NodePort Service
- Exposes a Service on a port across **all cluster nodes**.
- External clients can access the application using: `NodeIP:NodePort`

### Downsides of these:
- Node IPs can change
- Nodes can fail
- Exposes multiple endpoints, increasing attack surface
- Hard to manage at scale

---

## How LoadBalancer Service Solves This

- Provides a **single stable external IP** for accessing the application.
- Distributes incoming traffic to the Service, which then forwards requests to Pods.
- Combines the benefits of ClusterIP (internal routing) and NodePort (external exposure) while simplifying access and improving security.

---

## Example

Suppose an application runs across **3 nodes**:

`Without LoadBalancer`: we would access the application by:
  1. http://node1IP:NODEPORT
  2. http://node2IP:NODEPORT
  3. http://node3IP:NODEPORT

- Managing multiple node endpoints is cumbersome and exposes multiple nodes.

- With a `LoadBalancer` Service, Kubernetes provides a single IP, e.g.: `172.123.92.32`
-  External clients can access the app using: `http://172.123.92.32`
- The load balancer distributes traffic across nodes and Pods automatically.


---

## Key Takeaway

> A `LoadBalancer` Service provides a single, stable entry point for external access, distributing traffic across Pods in multiple nodes, while also offering ClusterIP functionality for internal cluster communication.
>>>>>>> a8551cf6eb97da29c2bdf3aaaf30877922f77309
