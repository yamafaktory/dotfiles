" No vi compatible mode
set nocompatible

" Turn syntax on
syntax on

" Vim-plug
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'groenewege/vim-less'
Plug 'jelera/vim-javascript-syntax'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'majutsushi/tagbar'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/syntastic'
Plug 'rking/ag.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
call plug#end()

" General
set autoread
set autowrite
set autowriteall
set cursorline
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set hidden
set history=999
set hlsearch
set ignorecase
set incsearch
set noswapfile
set nobackup
set nowritebackup
set lazyredraw
set list listchars=tab:»·,trail:·
set mat=5
set nowrap
set number
set shiftwidth=2
set shortmess=atI
set showcmd
set showmatch
set smartindent
set tabstop=2
set title
set ttyfast
set visualbell
set wildmenu
set wildmode=longest:list,full

" Leader
let mapleader=' '
let maplocalleader=' '

" Buffers
nnoremap <Leader>n :bn<cr>
nnoremap <Leader>p :bp<cr>
nnoremap <Leader>d :bd<cr>

" Split keybindings
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Color theme
set t_Co=256
set t_ut= "fix background issues
set colorcolumn=+1
set textwidth=80
colorscheme seoul256 
set background=dark

" CtrlP
let g:ctrlp_map='<Leader>p'
let g:ctrl_cmp='CtrlPMixed'

" Vim-airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled=1

" JavaScript code folding
au FileType javascript call JavaScriptFold()

" Unite
map <Leader>u :Unite file buffer<cr>

" EasyAlign
xmap <Enter> <Plug>(EasyAlign) " Visual mode
nmap ga <Plug>(EasyAlign) " Vim movement

" Rainbow parentheses always on
au VimEnter * RainbowParentheses

" Limelight on
au VimEnter * Limelight0.7

" Silver Searcher
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching=0
endif

