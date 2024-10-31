#!/bin/sh

pushd ..

kubectl apply -f gateways/gw-self-managed-configmap.yaml
kubectl apply -f gateways/gw-self-managed-deployment.yaml
kubectl apply -f gateways/gw-self-managed-service.yaml

kubectl apply -f gateways/gateway-parameters-self-managed.yaml
kubectl apply -f gateways/gw-self-managed.yaml

popd