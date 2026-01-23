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

## Example: Ingress Controller Deployment(This will create a Pod)

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: ingress-nginx-controller
  namespace: ingress-nginx
spec:
  replicas: 1
  selector:
    matchLabels:
      app: ingress-nginx
  template:
    metadata:
      labels:
        app: ingress-nginx
    spec:
      containers:
        - name: controller
          image: nginx/nginx-ingress:latest

---

## Example: Ingress Controller Service

```yaml
apiVersion: v1
kind: Service
metadata:
  name: ingress-nginx
  namespace: ingress-nginx
spec:
  type: LoadBalancer
  selector:
    app: ingress-nginx
  ports:
    - name: http
      port: 80
      targetPort: 80
    - name: https
      port: 443
      targetPort: 443


---

## Example: Ingress Rule

```yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: app-ingress
  namespace: default
spec:
  ingressClassName: nginx
  rules:
    - host: voguenest.tayolab.dev
      http:
        paths:
          - path: /
            pathType: Prefix
            backend:
              service:
                name: voguenest-service
                port:
                  number: 80
          - path: /api
            pathType: Prefix
            backend:
              service:
                name: notewatchapi-service
                port:
                  number: 80
