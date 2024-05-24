#!/bin/bash

DOTFILES=$HOME/.dotfiles
ZPREZTO=$DOTFILES/zsh
echo "installing dotfiles"

echo "initializing submodule(s)"
git submodule update --init --recursive

# echo "initializing prezto submodule(s)"
# cd $ZPREZTO
git submodule update --init --recursive
cd $DOTFILES

source install/link.sh
# always install zprezto after link
# source install/zprezto.sh

if [ "$(uname)" == "Darwin" ]; then
    echo "running on OSX"

    echo "installing homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/eliramshatz/.zprofile
    # eval "$(/opt/homebrew/bin/brew shellenv)"
    # ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    echo "brewing all the things"
    source install/brew.sh

    # echo "piping all the things"
    # source install/pip.sh

    echo "updating OSX settings"
    source installosx.sh
else
    echo "running on Ubuntu (probably)"

    echo "apt-get install all"
    source install/ubuntu.sh
fi

# install lunarvim
source install/lunarvim.sh


echo "configuring zsh as default shell"
sudo chsh -s $(which zsh)
