#!/bin/sh

cp $HOME/.zshrc . 2> /dev/null
cp $HOME/.bashrc . 2> /dev/null

cp $HOME/.vimrc .
rsync -av --delete $HOME/.vim/colors/* .vim/colors
