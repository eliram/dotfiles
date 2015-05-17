#!/bin/bash

DOTFILES=$HOME/.dotfiles
ZDOTDIR=$DOTFILES/zsh

echo "creating prezto symlinks"
ln -s ${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv $HOME/.zshenv

ln -s ${ZDOTDIR:-$HOME}/.zprezto/runcoms/zlogin $HOME/.zlogin

ln -s ${ZDOTDIR:-$HOME}/.zprezto/runcoms/zlogout $HOME/.zlogout

ln -s ${ZDOTDIR:-$HOME}/.zprezto/runcoms/zpreztorc $HOME/.zpreztorc

ln -s ${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile $HOME/.zprofile

ln -s ${ZDOTDIR:-$HOME}/.zprezto $HOME/.zprezto
