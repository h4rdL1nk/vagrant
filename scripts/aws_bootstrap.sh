#!/bin/bash

case $1 in
        "ubuntu") ! dpkg -s python >/dev/null 2>&1 && apt-get update && apt-get install -y python || echo "python instalado"
		  hostnamectl set-hostname $2
                  ;;
esac

sed -i "s/^\(127.0.0.1\).*/\1 localhost $2/g" /etc/hosts
