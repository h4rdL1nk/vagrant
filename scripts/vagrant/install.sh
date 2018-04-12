#!/bin/bash

curl -sL https://releases.hashicorp.com/vagrant/2.0.1/vagrant_2.0.1_x86_64.deb -o /tmp/vagrant.deb \
  && dpkg -i /tmp/vagrant.deb \
  && rm /tmp/vagrant.deb
