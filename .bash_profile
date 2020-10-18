echo "road .bash_profile"
test -r ~/.bashrc && . ~/.bashrc

export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"

# path
export PATH="/bin:$PATH"
export PATH="/sbin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/Cellar/pyenv-virtualenv/1.1.1/shims:$PATH"
