#!/bin/bash

DOTFILES=$HOME/.dotfiles
ZPREZTO=$DOTFILES/zsh
echo "installing dotfiles"

echo "initializing submodule(s)"
git submodule update --init --recursive

echo "initializing prezto submodule(s)"
cd $ZPREZTO
git submodule update --init --recursive
cd $DOTFILES

source install/link.sh
# always install zprezto after link
source install/zprezto.sh

if [ "$(uname)" == "Darwin" ]; then
    echo "running on OSX"

    echo "installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    echo "brewing all the things"
    source install/brew.sh

    echo "updating OSX settings"
    source installosx.sh
fi


echo "configuring zsh as default shell"
chsh -s $(which zsh)
