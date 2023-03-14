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























