#!/bin/bash

ip=${1}
type=${2:-worker}
token=$(sudo su - ladmin -c "ssh -oStrictHostKeyChecking=no ladmin@${ip} sudo docker swarm join-token ${type} -q")
if ! `sudo docker info 2>/dev/null | grep "Swarm: active" >/dev/null 2>&1`
then
        docker swarm join --token ${token} ${ip}:2377
else
        echo "Nodo ya pertenece a Swarm"
fi

