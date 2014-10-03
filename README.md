# uzyexe/kibana-packetbeat

## What is kibana-packetbeat

This image is extended ```Kibana``` to support new panels specialized in visualizing network data.


## What is Packetbeat

Packetbeat is a distributed packet monitoring system that can be used for application performance management. Think of it like a distributed real-time Wireshark with a lot more analytics features.

Packetbeat agents sniff the traffic between your application processes, parse on the fly protocols like HTTP, MySQL, Postgresql or REDIS and correlate the messages into transactions.

For each transaction, the agents insert a JSON document into Elasticsearch where they are stored and indexed.

The Kibana UI application provides advanced visualizations and ad-hoc queries. We have extended Kibana with our own panel types for visualizing network topologies.

[http://packetbeat.com](http://packetbeat.com)

## Dockerfile

[**Trusted Build**](https://registry.hub.docker.com/u/uzyexe/kibana-packetbeat/)

This Docker image is based on the Official [dockerfile/ubuntu](https://registry.hub.docker.com/u/dockerfile/ubuntu/) base image.

## How to use this image

```
docker run --name some-container -d -p 8000:8000 uzyexe/kibana-packetbeat
```

Then you can run ```http://localhost:8000``` or ```http://host-ip:8000``` in your browser.


