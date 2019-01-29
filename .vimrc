echo 'loading vimrc...'
if has('nvim')
  echo 'run nvim...'
  set runtimepath+=~/.nvim/
else
  echo 'run vim...'
  set runtimepath+=~/.vim/
endif


runtime! config/init/*.vim
runtime! config/dein/*.vim
