```sh
ip link # To list and modify interfaces on the host
```
```sh
ip addr # To see ip assign to those interface
```
```sh
ip addr add 192.168.1.10/24 dev eth0 # To set the ip addresss to the interface
```
```sh
ip route # To view the routing table
```
```sh
ip route add 192.168.1.0/24 via 192.168.2.1 # To add the entrey's in the routing table
```
```sh
cat /proc/sys/net/ipv4/ip_forward # To check ip forward enable on the host
```
```sh
ip netns add red # Create network namespace
```
```sh
ip netns # To see the network namespace
```
```sh
arp
```
```sh
netstart -plnt
```