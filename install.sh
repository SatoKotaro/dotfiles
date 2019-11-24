#!/bin/bash

# インストールしたパッケージを格納する
if [ -e .bin ]; then
    echo continue...
else
    echo new  ".bin" directory.
    mkdir .bin
fi

cd ./.bin

# upowerw
rm -rf upowerw
git clone https://github.com/punkrou404/upowerw.git
cd upowerw
sh ./init.sh

# pyenv
rm -rf ~/.pyenv
mkdir ~/.pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv

# pyenv-virtualenv
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

# virtualenv
sudo pip install --upgrade pip
sudo pip install virtualenv