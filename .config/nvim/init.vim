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
set shiftwidth=2

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
" buffers
"

" switch to next buffer with tab and previous with shift+tab
nnoremap <leader><tab> :bnext<cr>
nnoremap <leader><s-tab> :bprevious<cr>

" cycle between two last used buffers
nnoremap <leader><leader> <c-^>

" use tab for omnicomplete
inoremap <tab> <c-x><c-o>

"
" ocaml support
"
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
let g:syntastic_ocaml_checkers = ['merlin']


"
" plugins
"
call plug#begin('~/.local/share/nvim/plugged')

" utility
Plug 'tpope/vim-surround'
Plug 'jremmen/vim-ripgrep'

" colorschemes
Plug 'noahfrederick/vim-noctu'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'joshdick/onedark.vim'

" status line
Plug 'itchyny/lightline.vim'

" julia syntax
Plug 'JuliaEditorSupport/julia-vim'

"advanced syntax checking
Plug 'vim-syntastic/syntastic'

" latex functionality
Plug 'lervag/vimtex'

call plug#end()


"
" colors
"
set termguicolors
set noshowmode   " not needed due to lightline
"set background dark

colorscheme palenight
let g:palenight_terminal_italics=1
let g:lightline = { 'colorscheme': 'onedark' }

