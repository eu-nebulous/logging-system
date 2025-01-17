#!/bin/bash

# Create RBAC
kubectl apply -f elasticsearch/elasticsearch_sa/sa.yaml
kubectl apply -f elasticsearch/elasticsearch_sa/cluster_role.yaml
kubectl apply -f elasticsearch/elasticsearch_sa/cluster_role_binding.yaml

# Create Secrets
kubectl apply -f elasticsearch/SealedSecret-ElasticCertificates.yaml
kubectl apply -f elasticsearch/SealedSecret-ElasticCredentials.yaml

# Create Config Map
kubectl apply -f elasticsearch/elasticsearch_config_map.yaml

# Create Svc
kubectl apply -f elasticsearch/elasticsearch_svc.yaml

# Create PVs
kubectl apply -f elasticsearch/es-pv.yaml

# Statefulset
kubectl apply -f elasticsearch/elasticsearch_statefulset.yaml
