## Learning istio

This repository is just my notes about Istio, it's not a tutorial, but, maybe it will be useful to you. :)

## Cluster setup

I use the Kind to create a local kubernetes cluster, it's possible learn istio using only kind.

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

### Bookinfo

The bookinfo is a demo application to practical istio configuration, see the notes:

[Installing the bookinfo application](./docs/bookinfo/bookinfo.md)

### 