#!/bin/bash

DOTPATH=~/.dotfiles
#
#if which "git"; then
#	git clone --recursive "$GITHUB_URL" "$DOTPATH"
#elif which "curl" || "wget"; then
#	tarball="https://github.com/SatoKotaro/dotfiles/archive/master.tar"
#
#	if which "curl"; then
#	    curl -L "$tarball"
#	elif which "wget"; then
#	    wget -O - "$tarball"
#	fi | tar xv -
#
#	mv -f dotfiles-master "$DOTPATH"
#else
#	echo "curl or wget required"
#fi
#
#cd ~/.dotfiles
#if [ $? -ne 0 ]; then
#	echo "not found: $DOTPATH"
#fi

for file in .??*
  do
    [ "$file" = ".git" ] && continue #escape
    ln -snfv "$file" "$HOME"/"$file"
  done
