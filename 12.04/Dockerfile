FROM ubuntu:12.04
MAINTAINER Nitrous.IO Engineering <eng@nitrous.io>

RUN apt-get update && apt-get install -yq apt-transport-https
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
RUN echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -yq lxc-docker=1.0.*

ADD ./dind /dind
RUN chmod +x /dind

VOLUME /var/lib/docker
ENTRYPOINT ["/dind"]
