# wac-prometheus-node_exporter
The Prometheus/node_exporter docker container for wac-bp

Run with 
```
docker run -d -p 9100:9100 -v "/proc:/host/proc" -v "/sys:/host/sys" -v "/:/rootfs" --net="host" chadautry/prometheus-node_exporter
```

See [this Digital Ocean Article](https://www.digitalocean.com/community/tutorials/how-to-install-prometheus-using-docker-on-ubuntu-14-04) for a description of the command

### Status
[![Build Status](https://travis-ci.org/chad-autry/wac-prometheus-node_exporter.svg?branch=master)](https://travis-ci.org/chad-autry/wac-prometheus-node_exporter)
[![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg)](https://registry.hub.docker.com/u/chadautry/wac-prometheus-node_exporter/)
