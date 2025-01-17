#!/bin/bash

# Create namespaces
kubecly apply -f namespaces/elasticsearch.yaml
kubecly apply -f namespaces/fluentd.yaml
kubecly apply -f namespaces/kibana.yaml
