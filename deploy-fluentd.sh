#!/bin/bash

# Create Secrets
kubectl apply -f fluentd/SealedSecret-ElasticCredentials.yaml

# Create fluend DS
kubectl apply -f fluentd/fluentd_crio.yaml
