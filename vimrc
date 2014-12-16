" No vi compatible mode
set nocompatible

" Turn syntax on
syntax on

" Vim-plug
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'
Plug 'groenewege/vim-less'
Plug 'jelera/vim-javascript-syntax'
Plug 'junegunn/seoul256.vim'
Plug 'majutsushi/tagbar'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
call plug#end()

" General
set noswapfile
set nobackup
set nowritebackup
set showcmd
set autoread
set autowrite
set autowriteall
set wildmenu
set wildmode=longest:list,full
set showmatch
set mat=5
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
set ignorecase
set hlsearch
set ttyfast
set shortmess=atI
set nowrap

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

" Vim-airline
set laststatus=2
let g:airline#extensions#tabline#enabled=1

" JavaScript code folding
au FileType javascript call JavaScriptFold()

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeChDirMode=2
let g:NERDTreeMinimalUI=1

