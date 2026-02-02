# Kubernetes Ingress

When running multiple applications on the same cluster, creating a separate LoadBalancer for each app can be inefficient and expensive.  
**Ingress** allows you to use **a single external IP** to route traffic to multiple applications based on **hostname or path rules**.

---

## How it works

1. **Ingress Controller Deployment**
   - Runs the actual controller Pods (e.g., NGINX, Traefik)
   - Watches the API server for Ingress resources
   - Routes incoming HTTP(S) traffic to the correct Service based on rules

2. **Service for the Controller**
   - Exposes the Ingress Controller Pod
   - Can be `ClusterIP` (internal) or `LoadBalancer` (external)
   - The Service ensures traffic reaches the controller Pods reliably

3. **Ingress Rules**
   - Define how requests should be routed to different Services
   - Use **hostnames** and **paths** to direct traffic
   - Specify the **backend Service name and port**

---
