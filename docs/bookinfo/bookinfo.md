### Deploying bookinfo sample

```sh
k apply -f examples/istio/samples/bookinfo/platform/kube/bookinfo.yaml
```

### Deploying bookinfo gateway and virtual service

```sh
k apply -f examples/istio/samples/bookinfo/networking/bookinfo-gateway.yaml
```

### Deploying ingress

```sh
export INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')
```

```sh
export SECURE_INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="https")].nodePort}')
```

```sh
export INGRESS_HOST=$(kubectl get po -l istio=ingressgateway -n istio-system -o jsonpath='{.items[0].status.hostIP}')
```

```sh
export GATEWAY_URL=$INGRESS_HOST:$INGRESS_PORT
```

<hr>

### Deploying addons

```sh
k apply -f examples/istio/samples/addons
```

### Acessing dashboards

```sh
istioctl dashboard grafana
istioctl dashboard kiali 
```
