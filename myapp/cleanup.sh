#!/bin/sh
#kubectl delete  configmap frontend-config		
kubectl delete -f frontend-service.yaml -f frontend-deployment.yaml
#kubectl delete pvc frontend-pv-claim
#kubectl delete pv frontend-pv-volume
