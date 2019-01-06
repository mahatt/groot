
syntax enable
filetype plugin indent on

set number
set ruler
set guifont=mono\ 14

set showcmd
set showmode
set backspace=indent,eol,start

" Buffer
set hidden

set nocompatible

set wildmenu
set wildmode=list:longest
set wildignore+=*.swp

set ignorecase
set smartcase
set incsearch
set hlsearch


set wrap
set tabstop=4
set shiftwidth=4


let mapleader=","
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove
map <leader>ta :tabs
