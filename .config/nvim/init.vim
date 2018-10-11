"
" general options
"
set encoding=utf-8  " always use utf-8
set hidden          " buffers are hidden
set mouse=a         " enable mouse interactivity
syntax enable       " enable syntax processing
filetype plugin on
filetype indent on

"
" spaces and tabs
"
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces

"
" UI config
"
set number          " show line numbers
set cursorline      " highlight current line
set wildmenu        " visual autocomplete for command menu
set showmatch       " highlight matching parenthesis/brackets
let mapleader=","   " leader is comma

"
" searching
"
set incsearch       " search while characters are entered
set hlsearch        " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<cr>

" search in other files with vim-ripgrep
noremap <leader>r :Rg


"
" textflow and language
"
set textwidth=80    " default textwidth
set wrap
set formatoptions=qrn1 

nnoremap <leader>s :setlocal spell! spelllang=en_us<cr>


"
" plugins
"
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'jremmen/vim-ripgrep'

call plug#end()
