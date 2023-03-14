#### Cluster Architecture: 

- Master: Manage, Plan, schedule, and Monitor nodes
- Worker Nodes: Host applications as containers
- ETCD Cluster: Key-Value store
- Kube Scheduler: Distribute work between nodes
- Controller Manager: Brain behind orchastration
- Kube API Server: Agent run on each node
- Kube- Proxy: To ensure necessary rules apply to worker node

#### ETCD:

- ETCD is a distributed reliable key- value store that is simple, suecure, & fast.
- ETCD service listen on port 2379 by default.
- ETCD data store, store information regarding Nodes, PODs, Configs, Secrets, Accounts, Roles, Bindings, and other.

#### Kube-API server:

- Kube-API server resposible for:
  1. Authenticate User
  2. Validate Request
  3. Retrieve data
  4. Update ETCD
  5. Scheduler
  6. Kubelet

#### Kube controller Manager:

- Controller is a process that continuously monitor state of various components in the system. 
- Type of controller: Node Controller,Replication Controller, Deployment controller, Namespace controller,  and many more...
  - Watch Status
  - Remediate Situation
   #### Node Controller:
  - Node Monitor Period = 5s
  - Node Monitor Grace Period= 40s
  - POD Eviction Timeout = 5m
   #### Replication Controller: 
  - Replication controller helps us run multiple instances of a single pod in the kubernetes cluster, Replication controller provide high avaibility.
  - Load Balancing & Scaling 
  - Replication controller is a old technology replace by Replica set
 
 View Kube-controller-manager
 ```sh
kubectl get pods -n kube-system
```
 View Kube-controller-manager options
  ```sh
cat /etc/kubernetes/manifests/kube-controller-manager.yaml
```
 
 #### Kube Scheduler:
 
 - Responsible for only deciding which pod go to which nodes.
 - How Kube Scheduler decide:
     1. Filter Nodes ( ex. Based on size )
     2. Rank Nodes (ex. Priority fuction, Calculate how many cpu will be available after putting new pod based on that decide)    
 View Kube-scheduler options
 ```sh
cat /etc/kubernetes/manifests/kube-scheduler.yaml
```

#### kubelet:

- Register the nodes within the Kubernetes cluster
  - Register Node
  - Create PODs
  - Monitor Node & PODs

#### Kube Proxy:

- Kube Proxy is a process that runs on each node in the kubernetes cluster, it's job is to look for new services and everytime new service created it's create appropriate rules on each nodes to forward the traffic to these services to the backend pods. 
-  It's do that with IP table rule, it creates IP table rules on each nodes in the cluster to forward traffic heading to the IP of the service to the IP of the actual pods. 
 View Kube-proxy
 ```sh
kubectl get pods -n kube-system
```
Kube- proxy deploy as a demon sets
 ```sh
kubectl get deamonset -n kube-system
```

#### YAML in Kubernetes:

| Kind | Versiom    |
| :---:   | :---: |
| POD | V1   |
| Service | V1   |
| ReplicaSet | apps/V1   |
| Deployment | apps/V1   |

#### Deployments:

- Deployments provides us the capabilities to upgrade underlying instances simultaneously using roalingupdates undo changes and pods, resume changes as required. 

#### Services:

- Services helps us connect application together with other applications or users.

  #### Services types:
  
  - NodePort: Helps us by mapping port on the node to the port on the pod.
  - ClusterIP: Help us group the pod together and provide a single interface to access the pods in the group.
  - LoadBalancer

























  
  
  
  
  
  
  
  
  
  
