[![Docker Stars](https://img.shields.io/docker/stars/maaydin/centos-7-kafka.svg?maxAge=2592000)](https://img.shields.io/docker/stars/maaydin/centos-7-kafka.svg)
[![Docker Stars](https://img.shields.io/docker/pulls/maaydin/centos-7-kafka.svg?maxAge=2592000)](https://img.shields.io/docker/pulls/maaydin/centos-7-kafka.svg)
[![](https://badge.imagelayers.io/maaydin/centos-7-zookeeper:kafka.svg)](https://imagelayers.io/?images=maaydin/centos-7-kafka:latest)

# kafka-docker
Dockerfile for [Apache Kafka](http://kafka.apache.org/)

##Pre-Requisites
- Install docker-compose [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)

##Usage

Build docker image:

- ```cd path/to```
- ```bin/build.sh```

Start a single node:

- ```cd path/to```
- ```bin/run```

Scale:

- ```cd path/to```
- ```docker-compose -f compose/docker-compose.yml scale kafka=3```

##Note

- Modify ```docker-compose.yml``` & ```kafka.env``` & ```zoo.env``` files according to your needs.