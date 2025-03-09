#!/bin/sh

cp .zshrc $HOME
cp .bashrc $HOME

cp .vimrc $HOME
rsync -av --delete .vim/colors/* $HOME/.vim/colors/
