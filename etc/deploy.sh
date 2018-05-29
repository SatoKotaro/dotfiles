#!/bin/bash

LISTPATH=$HOME/dotfiles/etc/dotList.txt
cat $LISTPATH | while read line
  do
    ln -s $HOME/dotfiles/$line $HOME/$line
  done

