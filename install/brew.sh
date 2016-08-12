#!/bin/sh
# give me what I need, brew!

# cli tools
brew install ag

# development server setup
brew install postgresql
brew install redis

# development tools
brew install git
brew install reattach-to-user-namespace
brew install tmux
brew install zsh
brew install z
brew install htop
brew install ctags-exuberant
brew install node
brew update && brew tap nviennot/tmate && brew install tmate


npm install -g bower gulp nodemon
