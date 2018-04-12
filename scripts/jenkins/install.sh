#!/bin/bash

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add - \
  && echo -e "\n#Jenkins repository\ndeb https://pkg.jenkins.io/debian-stable binary/" >>/etc/apt/sources.list \
  && sudo apt-get update \
  && sudo apt-get install jenkins

