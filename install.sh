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

