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