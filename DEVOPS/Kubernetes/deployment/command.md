

# Commands used in Deployments

- `kubectl create -f deployment-filename.yaml`: To create the deployments

- `kubectl apply -f deployment-filename.yaml`: This is to apply a changes to the deployment 

- `kubectl get deployment`: To get all our deployments

- `kubectl get replicaset`: To get the replicaSet that was created when we run/created the deployment

- `kubectl get pods`: To get all the pods created by the ReplicaSet

- `kubectl get all`: This is to see all the deployment object created at 

- `kubectl describe deployment deployment-name` : This is to get a full information about a deployment

- `kubectl scale deployment deploymentName --replicase=(desiredNumber)`: This is used for scaling our deployment up or down to reduce or increase the number of pods.


