#!/bin/sh
kubectl create -f mysql-secret.yaml 
kubectl create -f mysql-deployment.yaml
kubectl create -f mysql-service.yaml 
kubectl create -f mysql-pv-old.yaml

