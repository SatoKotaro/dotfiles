" 全角スペースの背景を白に変更
autocmd Colorscheme * highlight FullWidthSpace ctermbg=white
autocmd VimEnter * match FullWidthSpace /　/

set number
set clipboard=unnamed
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set cursorline
set cursorcolumn
set virtualedit=onemore
set autoindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest
set list listchars=tab:\▸\-
set expandtab
set tabstop=2
set shiftwidth=2
set incsearch
set hlsearch

if &compatible
  set nocompatible
endif
set runtimepath+=~/dotfiles/.config/nvim/repos/github.com/Shougo/dein.vim
call dein#begin(expand("~/.cache/dein"))

call dein#add('Shougo/deoplete.nvim')
call dein#add('cohama/lexima.vim')
call dein#add('flazz/vim-colorschemes')
call dein#add('flazz/vim-colorschemes')
if dein#check_install()
  call dein#install()
endif
call dein#end()
