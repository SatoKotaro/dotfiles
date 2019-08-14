echo "road .bashrc"
alias ll='ls -alt'

# goenv
if which goenv > /dev/null 2>&1; then
    echo "Exists Golang."
else
    export GOENV_ROOT=$HOME/.goenv
    export PATH=$GOENV_ROOT/bin:$PATH
    eval "$(goenv init -)"
    echo "Initialize Golang."
fi

# golang
export GOPATH=$HOME/go
PATH=$PATH:$GOPATH/bin 

