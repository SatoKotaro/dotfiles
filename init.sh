#!/bin/bash
set -e
DOT_DIRECTORY="$(cd $(dirname $0); pwd)"
DOT_TARBALL="https://github.com/punkrou404/dotfiles.git"

echo ${DOT_DIRECTORY}

for f in .??*
do
  # デプロイしないファイルを弾く
  [[ ${f} = ".git" ]] && continue
  [[ ${f} = ".gitignore" ]] && continue
  [[ ${f} = "README.md" ]] && continue
  [[ ${f} = "`basename $0`" ]] && continue

  # ユーザルート配下にシンボリックリンクを貼る
  ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done

# 成功時のメッセージ
echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)
