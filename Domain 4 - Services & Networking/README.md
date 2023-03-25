#### Container Networking Interface (CNI):

- CNI is a set of standards, that define how program shold be devloped to solve networking challanges in container runtime enviourment.
- Program refer to plugins
- CNI defines how the plugins should be devloped, and how countainer runtime should invoke them.
- CNI Resposible for:
    - Container runtime must ncreate network namespace
    - Ideftify network the container must attach to
    - Container Runtime to invoke network plugin (bridge) when container is ADDed.
    - Container Runtime to invoke Network Plugin (bridge) when container is DELeted.
    - JSON format of the Network configuration.
- Plugins:
    - Must support command line arguments ADD/DEL/CHECK
    - Must support parameters container id, network ns etc..
    - Must manage IP Address assignment to PODs
    - Must Return results in a specific format

#### Cluster Networking:

- Master should accept connection on port 6443 for the api server, the worker node, controller tool, external user, and all other control plane components access the kubeapi server via this pod.
- kubelet on master and worker node listen on port 10250.
- Kube scheduler required port 10259 port to be open.
- Kube controller manager required port 10257 to be open.
- Worker node expose services for external servicers on port 30000-32767.
- ETCD server listen on port 2379

#### POD Networking:

- Requirements for POD networking:
    - Every POD should have an IP Address
    - Every POD should be able to communicate with every other POD in the same node.
    - Every POD should be able to communicate with every other POD on other nodes without NAT.
- How to set up POD Networking:
    - Step 1: Create a bridge network on each node
    ```sh
    ip link add v-net-0 type bridge # On node1
    ```
    ```sh
    ip link add v-net-0 type bridge # On node2
    ```
    - Step 2: Bring them up.
    ```sh
    ip link set dev v-net-0 up # On node1
    ```
    ```sh
    ip link set dev v-net-0 up # On node2
    ```
    - Step 3: Set IP address for bridge interface.
    ```sh
    ip link addr add 10.244.1.1/24 dev v-net-0 # On node1
    ```
    ```sh
    ip link addr add 10.244.2.1/24 dev v-net-0 # On node2
    ```
    - After building the base remaining steps we perform for each container and everytime new container is created. so we weite a script for it net-script.sh
- The kubelet on each node is resposible for creating containers. Whenever a container is created, the kubelet looks at the CNI configuration, passed as a command line argument when it was run, and identifies our script name(--cni-conf-dir=/etc/cni/net.d).

#### CNI in Kubernetes:

- The CNI plugin is configured in the kubelet service on each node in the cluster.
- View kubelet options:
```sh
ps -aux | grep kubelet
```
```sh
ls /opt/cni/bin #CNI bin directory have 
```










