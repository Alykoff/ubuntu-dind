FROM ubuntu:14.04
MAINTAINER Nitrous.IO Engineering <eng@nitrous.io>

RUN apt-get update && apt-get install -yq docker.io
RUN ln -sf /usr/bin/docker.io /usr/local/bin/docker

ADD ./dind /dind
RUN chmod +x /dind

VOLUME /var/lib/docker
ENTRYPOINT ["/dind"]
