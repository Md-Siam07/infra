Spark Cluster
---

This is using Spark 2.4.4.

## Installation

Start a spark cluster with 3 worker nodes.

`docker-compose up -d --scale spark-worker=2`

Install Java 8

```
sudo apt install openjdk-8-jdk
sudo update-alternatives --config java
```

Select Java 8 and then check the version `java -version`.
