if type trash-put &> /dev/null
then
    alias rm=trash-put
fi
echo Hello,deploy!
# 自動補完
autoload -U compinit
compinit

# 言語
export LANG=ja_JP.UTF-8

# キーバインド
bindkey -v
# cdの履歴を保持（同一のディレクトリは重複排除）
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zhistory
# メモリに保存される履歴の件数
export HISTSIZE=1000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000
# 重複を記録しない
setopt hist_ignore_dups
# 開始と終了を記録
setopt EXTENDED_HISTORY
# historyを共有
setopt share_history
# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space
# ヒストリを呼び出してから実行する間に一旦編集可能
setopt hist_verify
# 余分な空白は詰めて記録
setopt hist_reduce_blanks  
# 古いコマンドと同じものは無視 
setopt hist_save_no_dups
# historyコマンドは履歴に登録しない
setopt hist_no_store
# 補完時にヒストリを自動的に展開
setopt hist_expand
# 履歴をインクリメンタルに追加
setopt inc_append_history
# インクリメンタルからの検索
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

# migration .bash_profile
source ~/.bash_profile

# Alias
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias pbcopy='xsel --clipboard --input'
alias ls.='ls -ld `ll | grep -e '^\..\+$'`'
alias tree="pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/| /g'"

echo road .zshrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# brew実行時だけ.pyenvのパス外す(*$PATHの一番後ろに対象パス通してたらエイリアス効かない)
alias brew="env PATH=${PATH/\/Users/\satokotaro/\.pyenv\/shims:/} brew"
