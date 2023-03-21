- Easiest way to schedule a pod is to simpaly set the node name field to the name of the node in your pod specification file while creating the pod. 
- Kuberneted doesn't allow you to modify nodename to the pod, so another way to assign a pod is to create a binding object and send the pod request to the pod binding API.

#### Labels and Selector:

- In a pod defination file, under the metadata section create a section called labels, uder that add a labels in a key-value format. 
- Select:
  ```sh
  kubectl get pods --selector app=App1
  ```
- Kubernetes objects use labels and selector internally to connect diffrent objects together. 
- Annotations: While labels and selector used for grop the objects. Annotation used to record other details for informative purpose. Ex. buildversion, buildinformation, contact information....etc. 

#### Taints and Tolerations:

- Taints and Tolerations have nothing to do with security on the cluster. Taints and Tolerations used set restriction on what pods can be scheduled on a node.
- Taints are set on Nodes, and Tolerations set on pods.

#### Node Selectors:

- Select perticuler node to deploy pod.

#### Node Affinity: 

- The primary purpose of node affinity is to ensure PODs are hosted on perticular nodes.
- Node Affinity Types:
  - requiredDuringSchedulingIgnoredDuringExecution
  - PreferredDuringSchedulingIgnoredDuringExecution
  - requiredDuringSchedulingRequiredDuringExecution (Planned for Future)

#### Resource Requests:

- By default kubernetes assumes that pod or container within a pod requires 0.5 cpu and 269Mi of memory this is know as Resource request for container. The minimum ammount of cpu or memory requested by the container. 
- For the pod to pick up those default you must have first set those as default values for request and limit by creating a LimitRange in that namespace.

#### Daemon sets:

- Deamon sets are like replica sets, it will helps you to deploy multiple instances of the pods. But it will run one copy of your pods in each node in your cluster. 
- Deamon sets make sures always one copy will presents in each node in your cluster. 

#### Static Pods:

- Kubelet can manage pod independently, You cna provide pod defination file on directory on server /etc/kubernetes/manifest/
- Kubelet read the file periedically run the file and load the file.Kubelet make sure file run all the time.
- This pod created it's own, created by kubelet called static pod.

#### Multiple Scheduler:

- Kubernetes is highly extensible you can write your own kubernetes scheuling program, package it and deploy it as default scheduler or additional scheduler in kubernetes cluster.
- Kubernetes can have multiple scheduler. 