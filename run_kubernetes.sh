#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
dockerpath=turnertechappdeveloper/prediction

# Step 2
# Run the Docker Hub container with kubernetes
echo "Starting prediction docker container with Kubernetes."
kubectl run prediction --image=$dockerpath --port=80
echo "Waiting 30 seconds for pod to spin up"
sleep 30
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose pod prediction --type=LoadBalancer --port=80
./make_prediction.sh