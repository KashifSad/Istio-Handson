#!/bin/bash
#
kubectl label namespace default istio-injection=enabled
kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.21/samples/bookinfo/platform/kube/bookinfo.yaml



kubectl create ns test
kubectl label namespace test istio-injection=enabled
kubectl run test -n test --image=nginx
kubectl expose pod test -n test


kubectl create ns dev
kubectl label namespace dev istio-injection=enabled
kubectl run dev -n dev --image=nginx
kubectl expose pod dev -n dev



kubectl create ns qa
kubectl label namespace qa istio-injection=enabled
kubectl run qa -n qa --image=nginx
kubectl expose pod qa -n qa

