#!/bin/bash

set -e
set -u

# Launch in order
minikube start
kubectl apply -f ../manifests/mongo-secret.yaml
kubectl apply -f ../manifests/mongo.yaml
kubectl apply -f ../manifests/mongo-configmap.yaml 
kubectl apply -f ../manifests/mongo-express.yaml

# Give a URL to external service in minikube
minikube service mongo-express-service