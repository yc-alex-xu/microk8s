#!/bin/sh
#kubectl create configmap frontend-config --from-file=frontend-config
kubectl create -f frontend-deployment.yaml
kubectl create -f frontend-service.yaml 
