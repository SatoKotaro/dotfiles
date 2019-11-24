autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'

precmd () { 
    echo
    vcs_info 
    local pwd=`pwd`
    local upowerw=`upowerw -p`
    echo "[$upowerw]"`magenta "[$pwd]"`
}

PROMPT='%n@%m %# '
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

function magenta { echo -e "\e[35m$*\e[m"; }
