#!/bin/bash

LISTPATH=$HOME/dotfiles/etc/dotList.txt
cat $LISTPATH | while read line
  do
    ["$line" = ".config"] && continue
    ["$line" = ".git"] && continue
    ln -s $HOME/dotfiles/$line $HOME/$line
  done

