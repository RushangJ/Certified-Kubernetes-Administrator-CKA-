- Convert YAML file to equalant JSON format for manual Scheduling
```sh
curl --header "Content-Type:application/json" --request POST --data '{"apiVersion":"v1", "kind": "Binding" ...} http://$SERVER/api/v1/namespaces/default/pods/$PODNAME/binding/
```
- Taints - Node
```sh
kubectl taint nodes node-name key=value:taint-effect
```
