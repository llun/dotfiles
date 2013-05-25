" --------------------------------------------
" Text Formatting 
" --------------------------------------------
execute pathogen#infect()

set nowrap
set nocompatible
set bs=2
set history=700
set ruler
set autoread

syntax on
set background=dark

set encoding=utf8
set ffs=unix,mac,dos

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

set lbr
set tw=500

filetype on
filetype indent on
filetype plugin on

set autoindent

set so=7
set wildmenu
set backspace=eol,start,indent

set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set showmatch
set mat=2

set number

" --------------------------------------------
" Mapping Key
" --------------------------------------------

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

