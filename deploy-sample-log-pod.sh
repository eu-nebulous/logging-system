#!/bin/bash

# Create namespace
kubectl apply -f test/test.yaml

# Create pod
kubectl apply -f test/test-pod.yaml
