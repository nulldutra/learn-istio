## Consistent Hashing

Consistent hashing is a method for evenly distributing traffic among multiple instances of a service. It ensures that requests with similar attributes are consistently routed to the same backend instance

### Applying

```sh
kubectl apply -f examples/consistent-hash/
```

### Testing

```sh
kubectl run nginx-test --rm --image nginx -it -- /bin/bash
```

### First requests

Requests without header x-api-key are balanced

```sh
curl http://hello
```

Now, all request is sent to the same pod

```sh
curl http://hello --header "x-api-key: 123"
```

<hr>

## Log

```
root@nginx-test:/# while true; do curl http://hello --header "x-experimental: 12" && sleep 0.5; done
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
Hello, version 2
```

