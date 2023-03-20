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
