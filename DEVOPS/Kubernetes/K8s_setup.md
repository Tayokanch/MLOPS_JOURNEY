# How to Setup Kubernetes

- K8s could be setup manually on physical machine or a VM using solutions like `Docker Desktop`, `Minikube`(**For a single instance of K8** in an all in one setup) and `Kubeadm`(**this is used for multi-node setup)

- K8s Could be setup using an existing managed service on a cloud provider, using solutions like `GCP (GKE)`, `AWS (EKS)` and `AZURE (AKS)`


# MiniKube
- This tools bundles both the `Worker Nodes Components` and the `Master Node Components` in a single image, provding us a pre-configured `single node K8s cluster` so we can get start with K8s quickly.

# Three Things needed be installed to get Minikube working on a VM or Physical.
- `Hypervisor`
- `kubectl`
- `Minikube executable`

[Kubectl Installation Link](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)