```sh
kubectl get pods
```
```sh
kubectl describe pod myapp-pod
```
#### Replicaset
```sh
kubectl create -f replicaset-defination.yaml
```
```sh
kubectl get replicaset
```
#### To Scale: Change number of replicas in defination file
```sh
kubectl replace -f replicaset-defination.yaml
```
or
```sh
kubectl scale --replicas=6 -f replicaset-defination.yaml
```
or 
```sh
kubectl scale --replicas=6 -f replicaset myapp-replicaset
```
#### Deployment
```sh
kubectl create -f deployment-defination.yaml
```
```sh
kubectl get deployments
```
#### Service - NodePort
```sh
kubectl create -f service-defination.yaml
```
```sh
kubectl get services
```
#### Namespaces:
```sh
kubectl get pods --namespace=kube-system
```
```sh
kubectl create -f pod-defination.yaml --namespace=dev
```
```sh
kubectl create -f namespace-dev.yaml
```
or
```sh
kubectl create -namespace dev
```
Switch Namespace
```sh
kubectl config set-context $(kubectl config current-context) --namespace=dev
```
```sh
kubectl get pods --all-namespaces
```




















