
#### Operating System upgrade:

- Kubernetes waits for 5 mins to get pod online. The time it will wait to get pod online it's known as pod eviction timeout. It's set in controller manager, default as 5 mins.
-  When nodes comes back online after eviction timeout it comes up blank without any pods.

Step 1: Workload moves to another node of cluster.
```sh
kubectl drain node-1
```
Step 2: Make node unschedulable.
```sh
kubectl cordon node-1
```
Step 3: Re-boot the first node.
Step 4: Make pod schedulable. 
```sh
kubectl uncordon node-1
```
