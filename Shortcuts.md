- Dry run to genrate YAML files:/ 
K run nginx --image= nginx --dry-run= client -o yaml > pod.yaml/
vi pod.yaml/
k create -f pod.yaml/

-
