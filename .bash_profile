
alias ll='ls -alt'
source ~/.bashrc
[`uname`="Linux"] && alias open='xdg-open 2>/dev/null'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
<<<<<<< HEAD
=======
alias ll='ls -alt'
>>>>>>> c67bfd60da8de22e56aefebd06ac2943da0e1d42


vi ~/.bash_profile

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi
