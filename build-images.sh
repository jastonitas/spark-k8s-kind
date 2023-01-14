#!/bin/bash
docker build -t local-data/spark-store:spark-3.2.1 spark-store/.
docker build -t local-data/spark-master:spark-3.2.1 spark-master/.
docker build -t local-data/spark-slave:spark-3.2.1 spark-slave/.
docker build -t local-data/spark-submit:spark-3.2.1 spark-submit/.
docker build -t local-data/spark-cron:spark-3.2.1 spark-cron/.

kind load docker-image local-data/spark-store:spark-3.2.1 --name=data-cluster
kind load docker-image local-data/spark-master:spark-3.2.1 --name=data-cluster
kind load docker-image local-data/spark-slave:spark-3.2.1 --name=data-cluster
kind load docker-image local-data/spark-submit:spark-3.2.1 --name=data-cluster
kind load docker-image local-data/spark-cron:spark-3.2.1 --name=data-cluster