#!/bin/sh
#kubectl create configmap frontend-config --from-file=frontend-config
kubectl create -f deployment.yaml
kubectl create -f service.yaml 
