#!/usr/bin/env bash

check_commands() {
  if ! command -v kubectl &> /dev/null; then
    echo "kubectl: not found, please install"
    echo "https://github.com/kubernetes/kubectl/releases"
    exit 1
  fi

  if ! command -v kind &> /dev/null; then
    echo "kind: not found, please install"
    echo "https://github.com/kubernetes-sigs/kind/releases"
    exit 1
  fi

  if ! command -v istioctl &> /dev/null; then
    echo "istioctl: not found, please install"
    echo "https://github.com/istio/istio/releases"
    exit 1
  fi
}

main() {
  kind create cluster --name learning-istio --config cluster.yaml
  if [ "$?" -gt 0 ]; then
    echo "failed to create cluster"
    exit 1
  fi

  kubectl cluster-info --context kind-learning-istio

  echo "Installing istio profile"
  istioctl install --set profile=default

  if [ "$?" -gt 0 ]; then
    echo "failed to install Istio profile"
    exit 1
  fi

  echo "Adding 'istio-injection' label on default namespace"
  kubectl label namespace default istio-injection=enabled

  if [ "$?" -gt 0 ]; then
    echo "failed to add label on default namespace"
    exit 1
  fi
}

check_commands
main
