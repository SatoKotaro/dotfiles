#!/bin/bash
set -e
DOT_DIRECTORY="$(cd $(dirname $0); pwd)"
DOT_TARBALL="https://github.com/punkrou404/dotfiles.git"

echo ${DOT_DIRECTORY}

for f in .??*
do
  [[ ${f} = ".git" ]] && continue
  [[ ${f} = ".gitignore" ]] && continue
  [[ ${f} = "README.md" ]] && continue
  [[ ${f} = "`basename $0`" ]] && continue

  ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done
echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)
