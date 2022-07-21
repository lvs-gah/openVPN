#!/bin/bash

sudo yum -y remove openvpn-as-yum
sudo yum -y install https://as-repository.openvpn.net/as-repo-amzn2.rpm
sudo yum -y install openvpn-as