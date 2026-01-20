## Basic Commands used in services

- `kubectl create -f frontend-nodeport.yaml`: To create a service
  
- `kubctl get service`: This is used to get all existing service on a system.
  
- `kubectl apply -f frontend-nodeport.yaml`: To apply a service
  
- ` kubectl describe svc serviceName`: To get full information about a particular service
  
- `kubectl get pods -o wide` : To get all the Pods and which Node/ NodeIP they are running on
  
- `kubectl get endpoints serviceName` : To get all the endpoint i.e all the Pods IP attached to a Particular that are receiving traffic/

- `kubectl get node -o wide`: To get the IP of the node
# Access via NodeIP:NodePort
curl http://<NodeIP>:30080
