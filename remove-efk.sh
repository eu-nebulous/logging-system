#!/bin/bash

# Remove PVCs
kubectl -n elasticsearch delete pvc data-elasticsearch-0
kubectl -n elasticsearch delete pvc data-elasticsearch-1
kubectl -n elasticsearch delete pvc data-elasticsearch-2

# Remove namespaces
kubecly delete -f namespaces/elasticsearch.yaml
kubecly delete -f namespaces/fluentd.yaml
kubecly delete -f namespaces/kibana.yaml
kubecly delete -f test/test.yaml
