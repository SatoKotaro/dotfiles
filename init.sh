#!/bin/bash

#DOTPATH=~/.dotfiles

#if has "git"; then
#	git clone --recursive "$GITHUB_URL" "$DOTPATH"
#elif has "curl" || "wget"; then
#	tarball="repository URL"
#
#	if has "curl"; then
#	    curl -L "$tarball"
#	elif has "wget"; then
#	    wget -O - "$tarball"
#	fi | tar xv -
#
#	mv -f dotfiles-master "$DOTPATH"
#else
#	die "curl or wget required"
#fi
#
#cd ~/.dotfiles
#if [ $? -ne 0 ]; then
#	die "not found: $DOTPATH"
#fi

for file in .??*
  do
    [ "$file" = ".git" ] && continue #escape
    ln -snfv "$file" "$HOME"/"$file"
  done
