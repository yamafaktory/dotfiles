" No vi compatible mode
set nocompatible

" Turn syntax on
syntax on

" Vim-plug
call plug#begin()
Plug 'jelera/vim-javascript-syntax'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'edkolev/tmuxline.vim'
Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

" General
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set number
set visualbell
set hidden
set history=999
set autoread
set title
set encoding=utf-8
set fileencoding=utf-8
set incsearch
set hlsearch
set ttyfast
set shortmess=atI
set nowrap

" Color theme
set t_Co=256
set t_ut=
set colorcolumn=+1
colorscheme seoul256 
set background=dark

" Vim-airline
set laststatus=2

" JavaScript code folding
au FileType javascript call JavaScriptFold()
