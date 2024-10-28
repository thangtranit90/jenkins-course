#!/bin/bash

# this script is only tested on ubuntu xenial

# if use bindmount. need to create /var/jenkins_home directory owned by current user
# mkdir -p /var/jenkins_home
# chown -R 1000:1000 /var/jenkins_home

# run jenkins server in container. this container will be use volume jenkins_server to store data
docker run -p 8080:8080 -p 50000:50000 \
    -v jenkins_server:/var/jenkins_home \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --restart=always \
    -d --name jenkins-server thangtranit90/jk-custome-server:lts

chmod 666 /var/run/docker.sock
# show endpoint
echo 'Jenkins installed'
echo 'You should now be able to access jenkins at: http://'$(curl -s ifconfig.co)':8080'