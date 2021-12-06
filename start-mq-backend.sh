#!/bin/bash
HOSTNAME="localhost"
MQ_NAME="modoumq-backend"
docker container stop $(docker container ls -a | grep modoumq | awk '{print $1}')
docker rm -f $(docker container ls -a | grep modoumq | awk '{print $1}')
docker run -d --hostname $HOSTNAME --name $MQ_NAME -p 15672:15672 -p 5673:5672 -e RABBITMQ_DEFAULT_USER=guest -e RABBITMQ_DEFAULT_PASS=guest rabbitmq:3-management
