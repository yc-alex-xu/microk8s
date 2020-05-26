#!/bin/sh
#kubectl delete  configmap frontend-config		
kubectl delete -f service.yaml -f deployment.yaml
#kubectl delete pvc frontend-pv-claim
#kubectl delete pv frontend-pv-volume
