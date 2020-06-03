#!/bin/sh
#Run a proxy to the Kubernetes API server
kubectl proxy --accept-hosts=.* --address=0.0.0.0 &
