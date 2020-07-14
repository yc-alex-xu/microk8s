# K8S cluster
Microk8s

## version
```bash
$ kubectl version
Client Version: version.Info{Major:"1", Minor:"18+", GitVersion:"v1.18.2-41+b5cdb79a4060a3", GitCommit:"b5cdb79a4060a307d0c8a56a128aadc0da31c5a2", GitTreeState:"clean", BuildDate:"2020-04-27T17:29:53Z", GoVersion:"go1.14.2", Compiler:"gc", Platform:"linux/amd64"}
Server Version: version.Info{Major:"1", Minor:"18+", GitVersion:"v1.18.2-41+b5cdb79a4060a3", GitCommit:"b5cdb79a4060a307d0c8a56a128aadc0da31c5a2", GitTreeState:"clean", BuildDate:"2020-04-27T17:31:24Z", GoVersion:"go1.14.2", Compiler:"gc", Platform:"linux/amd64"}

```

## addons
```bash
$ microk8s status
microk8s is running
addons:
dashboard: enabled
dns: enabled
ingress: disabled
cilium: disabled
fluentd: disabled
gpu: disabled
helm: disabled
helm3: disabled
host-access: disabled
istio: disabled
jaeger: disabled
knative: disabled
kubeflow: disabled
linkerd: disabled
metallb: disabled
metrics-server: disabled
prometheus: disabled
rbac: disabled
registry: disabled
```
# configuration
These subfolders in the repo were written for minikube before, they shall work under microk8s,but not tested.

## install 3rd party service 
* redis
* mysql

## deploy myapp
* [get image from docker hub](https://hub.docker.com/repository/docker/justware/myapp)
* modify the yaml if needed
* execute the shell: start.sh
* 
# access service: myapp
* get the cluster ip from dashboard
* http:// <cluster ip>

# TBD
简化一下，在一个image 中集合redis+mysql+ go程序，只要env中没有redis/mysql的配置，go 程序就访问localost的redis/mysql。 这样不用部署到k8s上也可以测试了。

  


