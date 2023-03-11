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
  - Watch Status
  - Remediate Situation
  Node Controller:
  - Node Monitor Period = 5s
  - Node Monitor Grace Period= 40s
  - POD Eviction Timeout = 5m
 Replication Controller, Deployment controller, Namespace controller,  and many more...
 
 View Kube-controller-manager
 ```sh
kubectl get pods -n kube-system
```
  
  
  
  
