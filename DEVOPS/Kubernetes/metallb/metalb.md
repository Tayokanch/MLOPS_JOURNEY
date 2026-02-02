# To install LB

- `kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.15.3/config/manifests/metallb-native.yaml` : This is to install Metal LB by Manifest

- `kubectl get pods -n metallb-system`: To see all the metalLB pods

- `kubectl get svc -n metallb-system`: To see the metalLB Service

