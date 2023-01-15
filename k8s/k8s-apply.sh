#!/bin/bash
kubectl apply -f data-spark-pv.yaml
kubectl apply -f data-spark-master-pvc.yaml
kubectl apply -f data-spark-master-dpy.yaml
kubectl apply -f data-spark-master-svc.yaml
kubectl apply -f data-spark-worker-dpy.yaml

