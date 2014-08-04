#!/usr/bin/env bash

# Installing Node"
sudo apt-get install -y python g++ make -qq
sudo add-apt-repository -y ppa:chris-lea/node.js > /dev/null
sudo apt-get update > /dev/null
sudo apt-get install -y nodejs
