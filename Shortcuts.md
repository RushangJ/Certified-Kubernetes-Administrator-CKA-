- Delete pod without waiting:\
export now = "--force --grace-period 0"\
k delete pod nginx $now

- k explain pod.spec (view pod spec defination)
- k explain pod.spec.containers (view the container defination)
- k explain pod.spec.containers.resources (view the container resources defination)
- k explain pod.spec.containers.resources.limits (view the container resources limits)

#### Dry run to genrate YAML files:
```sh
K run nginx --image= nginx --dry-run= client -o yaml > pod.yaml\
vi pod.yaml\
k create -f pod.yaml
```
#### Create a new POD from Nginx Image
```sh
kubectl run mywebserver --image=nginx
```
#### List  the PODS that are currently running.
```sh
kubectl get pods
```
#### Connect inside the POD
```sh
kubectl exec -it mywebserver -- bash
```
You can come out of the POD with CTRL+D
```sh
kubectl exec -it mywebserver -- ls -l /
```
#### Delete the POD
```sh
kubectl delete pod mywebserver
```
