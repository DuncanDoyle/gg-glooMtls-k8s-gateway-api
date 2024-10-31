# Gloo Gateway: K8S Gateway API and GlooMtls

## Installation

Add Gloo Gateway Helm repo:
```
helm repo add glooe https://storage.googleapis.com/gloo-ee-helm
```

Export your Gloo Gateway License Key to an environment variable:
```
export GLOO_GATEWAY_LICENSE_KEY={your license key}
```

Install Gloo Gateway:
```
cd install
./install-gloo-gateway-with-helm.sh
```

> NOTE
> The Gloo Gateway version that will be installed is set in a variable at the top of the `install/install-gloo-gateway-with-helm.sh` installation script.

> NOTE
> This example deploys the Gloo Gateway platform with `glooMtls` mode enabled, which means that xDS communication between the control plane and data plane is secured (see: https://docs.solo.io/gloo-edge/main/guides/security/tls/mtls/).

## Setup the environment

Run the `install/setup-self-managed-gw.sh` script to setup the self-managed K8S Gateway API gateway-proxy (see also: https://docs.solo.io/gateway/latest/setup/customize/selfmanaged/):
```
./setup-self-managed-gw.sh
```

Run the `install/setup.sh` script to setup the environment:

- Create the required namespaces
- Deploy the Gloo Edge API Gateway
- Deploy the HTTPBin application
- Deploy the Reference Grants
- Deploy the VirtualService (Gloo Edge API)
- Deploy the HTTPRoute (K8S Gateway API)

```
./setup.sh
```

## Access the HTTPBin application

__Gloo Edg API:__

```
./curl-request-ge-api.sh
```

or

```
curl -v http://api.example.com:81/get
```

__Self Managed K8S Gateway API:__

```
./curl-request-g8s-gw-api.sh
```

or

```
curl -v http://api.example.com:81/get
```