FROM jenkins/jenkins:lts
ENV DOCKER_VERSION=docker-20.10.7
USER root

RUN mkdir -p /tmp/download && \
 curl -L https://download.docker.com/linux/static/stable/x86_64/${DOCKER_VERSION}.tgz | tar -xz -C /tmp/download && \
 rm -rf /tmp/download/docker/dockerd && \
 mv /tmp/download/docker/docker* /usr/local/bin/ && \
 rm -rf /tmp/download

 USER jenkins
