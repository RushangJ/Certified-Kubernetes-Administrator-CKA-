#### Bash profile kubectl Autocomplete.
```sh
source <(kubectl completion bash) # set up autocomplete in bash into the current shell, bash-completion package should be installed first.
echo "source <(kubectl completion bash)" >> ~/.bashrc # add autocomplete permanently to your bash shell.
```
#### Dry run to genrate YAML files.
```sh
kubectl run pod --image=nginx --dry-run=client -o yaml>pod.yaml
```
```sh
vi pod.yaml
```
```sh
k create -f pod.yaml
```
#### Replace temp yaml file no need to delete pod, delete pod and create pod
```sh
k replace --force -f /tmp/kubectl-edit-1123376299.yaml
```
#### Delete pod without waiting.
```sh
 kubectl delete pod <POD-NAME> --grace-period=0 --force
```
#### View pod spec defination.
```sh
k explain pod.spec
```
#### View the container defination
```sh
k explain pod.spec.containers
```
#### View the container resources defination
```sh
k explain pod.spec.containers.resources
```
#### View the container resources limits
```sh
k explain pod.spec.containers.resources.limits
```
#### Set VIM shortcuts profile
- Go to end of current like → $
- Go to start of first of current line → 0
- Go to the last line of the file → G
- Go to line number → :<desire_line_number>
- Undo the last change → u
- Undo the two last changes → 2u
- Delete contents from cursor to end of file → dG
- Save and quit quickly → ZZ
- Quit without saving → ZQ
- search for “string” → /string