#Spark Master
FROM adoptopenjdk/openjdk11:jre-11.0.16.1_1-ubuntu

RUN apt-get update && apt-get install -y \
 wget \
 default-jdk \
 python3.8 \
 scala && cd /home && mkdir spark && cd spark && \
 wget https://dlcdn.apache.org/spark/spark-3.3.1/spark-3.3.1-bin-hadoop2.tgz && \
 tar -xvf spark-3.3.1-bin-hadoop2.tgz

ENV SPARK_HOME /home/spark/spark-3.3.1-bin-hadoop2

ENTRYPOINT ["/home/spark/spark-3.3.1-bin-hadoop2/bin/spark-class","org.apache.spark.deploy.master.Master"]