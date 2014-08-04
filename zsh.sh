#!/usr/bin/env bash

# Installing Oh-My-Zsh

# Install zsh
sudo apt-get install -y zsh

# Install oh-my-zsh
sudo su - vagrant -c 'wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh'

# Change theme to avit
# sudo sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="avit"/' /home/vagrant/.zshrc

# Vi key binding - Vim Default editor
cat >> /home/vagrant/.zshrc << EOF
bindkey -v
KEYTIMEOUT=1
export EDITOR=vim
EOF

# Change vagrant user's default shell
chsh vagrant -s $(which zsh);

# # Grab my .zshrc and set owner
# curl https://gist.github.com/rodrigore/7232ed36ad3884b41cb3/raw/.zshrc > /home/vagrant/.zshrc
# sudo chown vagrant:vagrant /home/vagrant/.zshrc
