- Dry run to genrate YAML files:\
K run nginx --image= nginx --dry-run= client -o yaml > pod.yaml\
vi pod.yaml\
k create -f pod.yaml\

- Delete pod without waiting:\
export now = "--force --grace-period 0"\
k delete pod nginx $now\

- k explain pod.spec (view pod spec defination)\
- k explain pod.spec.containers (view the container defination)\
- k explain pod.spec.containers.resources (view the container resources defination)\
- k explain pod.spec.containers.resources.limits (view the container resources limits)
