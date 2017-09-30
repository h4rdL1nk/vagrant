#!/bin/bash

sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2 \
  epel-release \
  git

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install -y docker-ce python2-pip

pip install --upgrade pip ansible

sudo systemctl enable docker.service
sudo systemctl start docker.service

cd /opt \
   && git clone https://www.github.com/h4rdL1nk/ansible 