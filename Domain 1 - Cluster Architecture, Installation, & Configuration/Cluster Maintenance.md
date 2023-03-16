
#### Operating System upgrade:

- Kubernetes waits for 5 mins to get pod online. The time it will wait to get pod online it's known as pod eviction timeout. It's set in controller manager, default as 5 mins.
-  When nodes comes back online after eviction timeout it comes up blank without any pods.

##### Step 1: Workload moves to another node of cluster.
```sh
kubectl drain node-1
```
##### Step 2: Make node unschedulable.
```sh
kubectl cordon node-1
```
##### Step 3: Re-boot the first node.
##### Step 4: Make pod schedulable. 
```sh
kubectl uncordon node-1
```
#### Cluster Upgrade Process:

- It is mendetory to for all the components like kube-apiserver. controller-manager, kube-scheduler, kubelet, kube-proxy, and kubectl to have the same version.
- At any time Kubernetes supports only upto recent 3 minus versions. 
- Upgrading cluster involves two major steps, First you upgrade your master node and then upgrade worker node.
- Ex: Upgrade Kubeadm cluster
```sh
kubectl upgrade plan #infromation about cluster,give you command to upgrade, current version....
```
- Kubeadm - upgrade
```sh
apt-get upgrade -y kubeadm=1.12.0-00
```
```sh
kubeadm upgrade apply v1.12.0
```
```sh
kubectl get nodes
```
```sh
apt-get upgrade -y kubelet=1.12.0-00
```
```sh
systemctl restart kubelet
```
- Now upgrade the worker node.

#### Backup and Restore Methods:

- Backup Candidates:
  - Resource Configuration
    - Imperative: Imperative way of the creating a object by executing a command.
    - Declarative: Declarative approch by creating defination (YAML) file.
    - Better approch to backing up resource configuration is to query kubeapi server.
    ```sh
    kubectl get --all-namespaces =o yaml > all-deploy-services.yaml
    ```
  - ETCD Cluster
  - Persistent Volumes












