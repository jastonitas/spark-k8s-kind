#!/bin/bash
docker build -t local-data/spark-store:spark-3.2.1 spark-store/.
docker build -t local-data/spark-master:spark-3.2.1 spark-master/.
docker build -t local-data/spark-worker:spark-3.2.1 spark-worker/.
docker build -t local-data/spark-submit:spark-3.2.1 spark-submit/.

kind load docker-image local-data/spark-store:spark-3.2.1 --name=datahub-clsr
kind load docker-image local-data/spark-master:spark-3.2.1 --name=datahub-clsr
kind load docker-image local-data/spark-worker:spark-3.2.1 --name=datahub-clsr
kind load docker-image local-data/spark-submit:spark-3.2.1 --name=datahub-clsr

