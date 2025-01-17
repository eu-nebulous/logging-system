#!/bin/bash

# Create Config Map
kubectl apply -f kibana/kibana_config.yaml

# Create Secrets
kubectl apply -f kibana/SealedSecret-KibanaCertificates.yaml
kubectl apply -f kibana/SealedSecret-KibanaCredentials.yaml

# Deploy Kibana
kubectl apply -f kibana/kibana.yaml
