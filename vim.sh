#!/usr/bin/env bash

echo ">>> Installing - Setting up Vim (7.4)"
sudo add-apt-repository -y ppa:fcwu-tw/ppa > /dev/null
sudo apt-get update > /dev/null
sudo apt-get install -y vim -qq

# Create directories needed for some .vimrc settings
mkdir -p /home/vagrant/._backup
mkdir -p /home/vagrant/._temp

# Install Vundle and set finally owner of .vim files
git clone https://github.com/gmarik/vundle.git /home/vagrant/.vim/bundle/vundle
sudo chown -R vagrant:vagrant /home/vagrant/.vim

# Grab my .vimrc and set owner
curl https://gist.github.com/rodrigore/50d9d457e6e7ba04df3a/raw/.vimrc > /home/vagrant/.vimrc
sudo chown vagrant:vagrant /home/vagrant/.vimrc

