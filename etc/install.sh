#!/bin/bash

# dein.vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh
echo run install.sh
rm ./installer.sh
echo complete install

#trash-cli
if [ ! -d "trash-cli" ]; then
  git clone https://github.com/andreafrancia/trash-cli
  cd trash-cli
  python setup.py install
fi
