echo 'loading vimrc...'
set runtimepath+=~/.vim/
runtime! config/init/*.vim

if has('nvim')
  echo 'run nvim...'
  set runtimepath+=~/.nvim/
else
  echo 'run vim...'
  set runtimepath+=~/.vim/
endif

runtime! config/dein/*.vim
