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
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
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

" Vim-airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled=1

" JavaScript code folding
au FileType javascript call JavaScriptFold()

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeChDirMode=2
let g:NERDTreeMinimalUI=1
let g:NERDTreeShowHidden=1

" Start interactive EasyAlign in visual mode
xmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign with a Vim movement
nmap ga <Plug>(EasyAlign)

" Rainbow parentheses always on
au VimEnter * RainbowParentheses

" Limelight on
au VimEnter * Limelight0.7

" CtrlP
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'

