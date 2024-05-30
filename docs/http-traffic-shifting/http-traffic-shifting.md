## Istio traffic shifting

Traffic shifting is a method for gradually rerouting traffic between different versions of a service. It allows for controlled testing and deployment of updates by directing a portion of incoming requests to the new version while still serving the majority to the previous version.

### Applying the manifests

```sh
kubectl apply -f examples/http-traffic-shifting/
```

### Changing traffic weight

Edit the file `examples/http-traffic-shifting/virtual-service.yaml` and change `weight` line

```
vim examples/http-traffic-shifting/virtual-service.yaml
```

Applying changes

```sh
kubectl apply -f examples/http-traffic-shifting/virtual-service.yaml
```

### Kiali

![](./kiali-traffic-shifting.png)
