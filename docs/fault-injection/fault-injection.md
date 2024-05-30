## Fault injection

Istio fault injection is a feature that allows developers to deliberately introduce faults into their microservices-based applications to test how resilient they are under various error conditions.

### Response time

Adding delay on microservices.

```sh
kubectl apply -f examples/fault-injection/delay
```

<hr>

### HTTP status code

Adding custom status code on response.

```sh
kubectl apply -f examples/fault-injection/abort
```

