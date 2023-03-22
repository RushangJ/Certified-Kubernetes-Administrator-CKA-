- Convert YAML file to equalant JSON format for manual Scheduling
```sh
curl --header "Content-Type:application/json" --request POST --data '{"apiVersion":"v1", "kind": "Binding" ...} http://$SERVER/api/v1/namespaces/default/pods/$PODNAME/binding/
```
- Taints - Node
- Taint effect will define what happens to the pod if pod do not tolerate taint. There are 3 taint effects
    - NoSchedule
    - PreferNoSchedule
    - NoExecute
```sh
kubectl taint nodes node-name key=value:taint-effect
```
```sh
kubectl taint nodes node1 app=blue:NoSchedule
```
- Label Nodes
```sh
kubectl label nodes <node-name> <label-key>=<label-value>
```
```sh
kubectl label nodes node-1 size=Large
```
- View DaemonSets:
```sh
kubectl get daemonsets
```
```sh
kubectl describe daemonsets
```
- View static pod
```sh
docker ps
```
- View Scheduler
```sh
kubectl get pods --namespace=kube-system
```
- View Events
```sh
kubectl get events -o wide
```
- View Scheduler logs
```sh
kubectl logs my-custom-scheduler --name-space=kube-system
```
- Rollout Command
```sh
kubectl rollout status deployment/myapp-deployment
```
```sh
kubectl rollout history deployment/myapp-deploy
```
- Kubectl apply (after made chanes into defination file)
```sh
kubectl apply -f deployment-defination.yaml
```
```sh
kubectl set image deployment/myapp-deployment nginx=nginx:1.9.1
```
- Rollback
```sh
kubectl rollout undo deployment/myapp-deployment
```
- Create ConfigMaps:
```sh
kubectl create configmap  
    <config-name> --from-literal=<key>=<value> #Imperative
```
```sh
kubectl create configmap \
    app-config --from-literal=APP_COLOR=blue
```
```sh
kubectl create -f config-map.yaml #Declarative
```
```sh
kubectl get configmaps
```
```sh
kubectl describe configmaps
```
- Create Secrets:
```sh
kubectl create secret generic
    <secret-name> --from-literal=<key>=<value> #Imperative
```
```sh
kubectl create secret generic \
    app-secret --from-literal=DB_Host=mys
```
```sh
kubectl create -f secret-data.yaml
```
```sh
kubectl get secrets
```
```sh
kubectl describe secrets
```
```sh
kubectl get secret app-secret -o yaml
```