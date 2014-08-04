#!/usr/bin/env bash

echo 'Updating packages list'
sudo apt-get update >/dev/null

echo 'Installing Base Packages'
sudo apt-get install -y build-essential python-software-properties -qq

echo 'Installing CURL WGET GIT'
sudo apt-get install -y curl wget git-core -qq
