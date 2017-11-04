#!/bin/bash

DOTPATH=~/.dotfiles

for file in .??*
  do
    [ "$file" = ".git" ] && continue #escape
    ln -snfv "$file" "$HOME"/"$file"
  done
