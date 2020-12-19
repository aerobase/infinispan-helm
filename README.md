# Infinispan Operator helm chart
The Infinispan Operator provides operational intelligence and reduces management complexity for deploying Infinispan on Kubernetes and Red Hat OpenShift.

This chart is a simple alternative to operatorhub deployment.

## Introduction 
This chart bootstraps an [Infinispan](https://infinispan.org/infinispan-operator/master/operator.html) Operator Deployment on a Kubernetes cluster using the Helm package manager. 

## Installing the Chart
To install the chart with the release name infinispan-operator:
```
helm install infinispan-operator-prerequisites charts/infinispan-operator-prerequisites
helm install infinispan-operator charts/infinispan-operator
```

## Uninstalling the Chart
To uninstall/delete the infinispan-operator deployment:
```
helm delete infinispan-operator
```
