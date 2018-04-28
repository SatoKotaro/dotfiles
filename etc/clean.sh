#!/bin/bash

LISTPATH=$HOME/dotfiles/etc/dotList.txt
cat $LISTPATH | while read task_name
  do
    rm -rvd $HOME/$task_name
  done
