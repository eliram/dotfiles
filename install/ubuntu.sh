#!/bin/sh
# give me what I need, ubuntu!
sudo apt-get update

# cli tools
sudo apt-get install silversearcher-ag

# development server setup
sudo apt-get install postgresql postgresql-contrib
# brew install redis

# development tools
# brew install reattach-to-user-namespace
sudo apt-get install tmux
sudo apt-get install python-software-properties && \
	sudo add-apt-repository ppa:nviennot/tmate      && \
	sudo apt-get update                             && \
	sudo apt-get install tmate
sudo apt-get install zsh
# brew install z
sudo apt-get install htop
sudo apt-get install exuberant-ctags
git clone https://github.com/rupa/z.git ~/z
sudo apt-get install build-essential cmake
