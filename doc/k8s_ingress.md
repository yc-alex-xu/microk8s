https://kubernetes.io/docs/concepts/services-networking/ingress/

# install

```bash
$./quay.sh
$ microk8s enable ingress
$ microk8s status
microk8s is running
addons:
dashboard: enabled
dns: enabled
ingress: enabled
```

# deploy
```bash
$ kubectl create -f ingress.yaml
ingress.networking.k8s.io/k8s-dashboard created

$ ps -ef |grep proxy
alex     20348 20302  0 12:32 pts/2    00:00:04 /snap/microk8s/1378/kubectl proxy --accept-hosts=.* --address=0.0.0.0
$ kill -9 20348
```
# get token
```bash
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep dashboard-token | awk '{print $1}')
```

# get k8s ip
```bash
$ kubectl get services -A
NAMESPACE     NAME                        TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)                  AGE
default       kubernetes                  ClusterIP   10.152.183.1     <none>        443/TCP                  4d18h
default       mysql                       ClusterIP   10.152.183.111   <none>        3306/TCP                 24m
default       redis                       ClusterIP   10.152.183.189   <none>        6379/TCP                 3d
kube-system   dashboard-metrics-scraper   ClusterIP   10.152.183.158   <none>        8000/TCP                 4d4h
kube-system   heapster                    ClusterIP   10.152.183.212   <none>        80/TCP                   4d4h
kube-system   kube-dns                    ClusterIP   10.152.183.10    <none>        53/UDP,53/TCP,9153/TCP   4d
kube-system   kubernetes-dashboard        ClusterIP   10.152.183.80    <none>        443/TCP                  4d4h
kube-system   monitoring-grafana          ClusterIP   10.152.183.21    <none>        80/TCP                   4d4h
kube-system   monitoring-influxdb         ClusterIP   10.152.183.146   <none>        8083/TCP,8086/TCP        4d4h
```
# access dashboard
http://10.152.183.1/dashboard

还是不能成功，先放弃，太麻烦
