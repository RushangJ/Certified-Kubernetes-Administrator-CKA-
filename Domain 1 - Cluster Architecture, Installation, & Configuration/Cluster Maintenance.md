
#### Operating System upgrade:

- Kubernetes waits for 5 mins to get pod online. The time it will wait to get pod online it's known as pod eviction timeout. It's set in controller manager, default as 5 mins.
-  When nodes comes back online after eviction timeout it comes up blank without any pods.
