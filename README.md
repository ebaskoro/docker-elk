# Elasticsearch, Logstash, Kibana (ELK) Docker Image

![Docker Automated build](https://img.shields.io/docker/automated/ebaskoro/elk?style=plastic)

A Docker image for Elasticsearch, Logstash, Kibana (ELK) stack with Marvel and Sense plugins.

To run the container:
```
docker run -d -p 9200:9200 -p 5601:5601 --name elastic ebaskoro/elk
```