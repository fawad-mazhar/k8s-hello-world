#!/bin/bash

set -e
set -u

kubectl delete -f ../manifests/mongo-express.yaml
kubectl delete -f ../manifests/mongo-configmap.yaml 
kubectl delete -f ../manifests/mongo.yaml
kubectl delete -f ../manifests/mongo-secret.yaml

minikube stop