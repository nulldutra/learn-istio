## Learning istio

This repository is just my notes about Istio, it's not a tutorial, but, maybe it will be useful to you. :)

## Setup

I use the Kind to create a local kubernetes cluster, it's possible learn istio using only kind.

```sh
./setup.sh
```

## Run the commands manually 

Creating kind cluster:

```sh
kind create cluster --config cluster.yaml
```

Installing istioctl:

```sh
curl -L https://istio.io/downloadIstio | sh -
```

Installing istio on Kubernetes:

```sh
istioctl install --set profile=demo
```

Adding label istio-injection for istio to automatically add the sidecard:

```sh
kubectl label namespace default istio-injection=enabled
```

<hr>

### Examples

## Bookinfo

The bookinfo is a demo application to practical istio configuration, see the notes:

[Installing the bookinfo application](./docs/bookinfo/bookinfo.md)

## Base manifests

[Configuring manifests for practicing the examples](./docs/deployments/deployments.md)

## HTTP traffic shifting

[Configuring HTTP traffic shifting](./docs/http-traffic-shifting/http-traffic-shifting.md)

## Consistent Hashing

[Configuring consistent hashing based on HTTP header](./docs/consistent-hash/consistent-hash.md)

## Fault injection

[Configuring fault injection based on HTTP status code](./docs/fault-injection/fault-injection.md#response-time)

[Configuring fault injection based on HTTP response time](./docs/fault-injection/fault-injection.md#http-status-code)

## Gateways

[Configuring istio gateways](./docs/gateways/gateways.md)

