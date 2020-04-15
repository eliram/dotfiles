#!/bin/sh
# give me what I need, brew!

# cli tools
brew update
brew install ag

# development server setup
brew install postgresql
brew install mysql
brew install rabbitmq
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
brew install cmake
# brew update && brew tap nviennot/tmate && brew install tmate
brew install tmuxinator
brew tap camspiers/taps
brew install tmuxinator-fzf-start
brew install jesseduffield/lazygit/lazygit
# brew install lazygit
brew install jesseduffield/lazydocker/lazydocker
# brew install lazydocker
brew install starship
brew install nvm

brew install neovim
brew install pyenv
brew install pyenv-virtualenv

