#!/bin/bash

cat ./dotList.txt | while read line
  do
    ln -s $HOME/dotfiles/$line $HOME/$line
  done
