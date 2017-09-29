#!/bin/bash

sudo apt-get install -y \
	apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update && sudo apt-get install -y docker-ce

echo "Fixing SSH ..."
grep KexAlgorithms /etc/ssh/sshd_config
sed -i 's/\(^KexAlgorithms\).*/\1 diffie-hellman-group1-sha1/g' /etc/ssh/sshd_config && systemctl restart ssh