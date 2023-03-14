```sh
kubectl get pods
```
```sh
kubectl describe pod myapp-pod
```
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
