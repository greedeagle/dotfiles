#!/bin/bash

DOT_FILES=(".vimrc" , ".vimrc")

for file in ${DOT_FILES[@]}
do
     echo "[CREATE Symbolic]ln -s $HOME/dotfiles/$file $HOME/$file"
     ln -s $HOME/dotfiles/$file $HOME/$file
done

DOT_DIRS=(".vim", ".atom")

for targetdir in ${DOT_DIRS[@]}
do
	echo "[CREATE Symbolic]ln -s $HOME/dotfiles/$targetdir/ $HOME/"
     ln -s $HOME/dotfiles/$targetdir/ $HOME/
done
