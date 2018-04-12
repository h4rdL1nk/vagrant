#!/bin/bash

curl -sL http://download.virtualbox.org/virtualbox/5.2.2/virtualbox-5.2_5.2.2-119230~Ubuntu~trusty_amd64.deb -o /tmp/virtualbox.deb \
  && sudo dpkg -i /tmp/virtualbox.deb \
  && rm /tmp/virtualbox.deb 
