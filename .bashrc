
[`uname`="Linux"] && alias open='xdg-open 2>/dev/null'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias ll='ls -al'
PS1='\s\v\[\033[1;36m\][\t][$USER][/\W]\033[0m\]$ '
