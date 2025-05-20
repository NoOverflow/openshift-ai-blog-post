#!/bin/bash
oc new-project ray
oc new-project ray-operator
helm repo add kuberay https://ray-project.github.io/kuberay-helm/
helm repo update
helm upgrade --install kuberay-operator kuberay/kuberay-operator -n ray-operator --version 1.1.0 --set rbacEnable=false
helm upgrade --install raycluster kuberay/ray-cluster -n ray --version 1.1.0
