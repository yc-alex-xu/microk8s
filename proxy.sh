#!/bin/sh
kubectl proxy --accept-hosts=.* --address=0.0.0.0 &
