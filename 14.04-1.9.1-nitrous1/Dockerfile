# Auto generated Dockerfile, please dont edit
FROM ubuntu:trusty
MAINTAINER Nitrous.IO <hello@nitrous.io>

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade && \
  apt-get install -yq apt-transport-https curl iptables && \
  apt-get clean

RUN curl -sSL https://get.docker.com/ | sh

COPY docker-1.9.1-nitrous1 /usr/bin/docker
COPY ./dind /dind

VOLUME /var/lib/docker
ENTRYPOINT ["/dind"]
