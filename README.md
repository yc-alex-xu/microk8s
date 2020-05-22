# microk8s
My K8S cluster 

# env
```bash
$ uname -a
Linux minipc 5.3.0-51-generic #44~18.04.2-Ubuntu SMP Thu Apr 23 14:27:18 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
$ kubectl version
Client Version: version.Info{Major:"1", Minor:"18+", GitVersion:"v1.18.2-41+b5cdb79a4060a3", GitCommit:"b5cdb79a4060a307d0c8a56a128aadc0da31c5a2", GitTreeState:"clean", BuildDate:"2020-04-27T17:29:53Z", GoVersion:"go1.14.2", Compiler:"gc", Platform:"linux/amd64"}
Server Version: version.Info{Major:"1", Minor:"18+", GitVersion:"v1.18.2-41+b5cdb79a4060a3", GitCommit:"b5cdb79a4060a307d0c8a56a128aadc0da31c5a2", GitTreeState:"clean", BuildDate:"2020-04-27T17:31:24Z", GoVersion:"go1.14.2", Compiler:"gc", Platform:"linux/amd64"}

```

# install snap Microk8s
offical guide： https://microk8s.io/docs

# install addon
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

# install own app


# gfw issue
run the script under folder gfw
