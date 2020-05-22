#!/bin/sh

for imageName in  $(cat quay.txt)  
do
    docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/${imageName}:0.25.1
    docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName:0.25.1 quay.io/kubernetes-ingress-controller/${imageName}-amd64:0.25.1
    docker rmi registry.cn-hangzhou.aliyuncs.com/google_containers/${imageName}:0.25.1
    docker save quay.io/kubernetes-ingress-controller/${imageName}-amd64:0.25.1 > ${imageName}.tar
    microk8s.ctr image import ${imageName}.tar
done

microk8s ctr images ls
