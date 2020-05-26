# K8S cluster
Microk8s

```bash
$ kubectl version
Client Version: version.Info{Major:"1", Minor:"18+", GitVersion:"v1.18.2-41+b5cdb79a4060a3", GitCommit:"b5cdb79a4060a307d0c8a56a128aadc0da31c5a2", GitTreeState:"clean", BuildDate:"2020-04-27T17:29:53Z", GoVersion:"go1.14.2", Compiler:"gc", Platform:"linux/amd64"}
Server Version: version.Info{Major:"1", Minor:"18+", GitVersion:"v1.18.2-41+b5cdb79a4060a3", GitCommit:"b5cdb79a4060a307d0c8a56a128aadc0da31c5a2", GitTreeState:"clean", BuildDate:"2020-04-27T17:31:24Z", GoVersion:"go1.14.2", Compiler:"gc", Platform:"linux/amd64"}

```

#  addons
```bash
$ microk8s status
microk8s is running
addons:
dashboard: enabled
dns: enabled
ingress: enabled
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
# install 3rd party service 
* redis
* mysql

# install myapp
* source code in the repo: https://github.com/yc-alex-xu/go
* build app locally
* build the docker image
* import the docker image
* deploy the image as srevice

# access myapp
  http://<cluster ip>


