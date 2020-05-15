#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
dockerpath=turnertechappdeveloper/prediction

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run prediction --image=turnertechappdeveloper/prediction --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose pod prediction --type=LoadBalancer --port=80
minikube service prediction