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


