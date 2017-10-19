#!/bin/bash

echo "Inicializando swarm ..."
ip=$(ip -f inet addr | awk '/^[0-9]+:.*[a-z0-9]+:.*<.*>.*state UP.*$/{getline;split($2,a,"/");print a[1];}')

if ! `sudo docker node ls >/dev/null 2>&1`
then
        docker swarm init --listen-addr ${ip}:2377 --advertise-addr ${ip}:2377
else
        echo "Swarm ya creado"
fi

