#!/bin/sh

pushd ..

kubectl delete -f gateways/gw-self-managed.yaml
kubectl delete -f gateways/gateway-parameters-self-managed.yaml

kubectl delete -f gateways/gw-self-managed-service.yaml
kubectl delete -f gateways/gw-self-managed-deployment.yaml
kubectl delete -f gateways/gw-self-managed-configmap.yaml

popd