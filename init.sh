#!/bin/bash

if [ -e "$HOME/.bashrc" ]; then
  rm $HOME/.bashrc
  echo "remove .bashrc ..."
fi

if [ -e "$HOME/.bash_profile" ]; then
  rm $HOME/.bash_profile
  echo "remove .bash_profile ..."
fi

echo "recreate config Files ... "

DOT_FILES=(.bashrc .bash_profile)

for file in ${DOT_FILES[@]}
  do
    ln -s $HOME/dotfiles/$file $HOME/$file
  done
