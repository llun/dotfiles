"
" Vundle
"
set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Functionality
Bundle 'scrooloose/nerdtree.git'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim.git'
Bundle 'bling/vim-bufferline'
Bundle 'bling/vim-airline'

" Syntaxs
Bundle 'digitaltoad/vim-jade.git'
Bundle 'pangloss/vim-javascript'
Bundle 'groenewege/vim-less'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'plasticboy/vim-markdown.git'
Bundle 'Blackrush/vim-gocode'
Bundle 'derekwyatt/vim-scala'
Bundle 'yosssi/vim-ace.git'


"
" General
"
filetype indent plugin on
set history=700
set autoread

"
" User interface
"
set number
set so=7
set wildmenu
set ruler
set backspace=eol,start,indent
set whichwrap+=<,>,h,l,[,]
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell

"
" Color and Fonts
"
syntax on
set background=dark
set encoding=utf8
set ffs=unix,mac,dos

"
" Files, backups and undo
"
set nobackup
set nowb
set noswapfile

"
" Text, tab and indent related
"
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set fdm=manual
set nofen

set nowrap
set autoindent
set smartindent

set lbr
set tw=500

"
" Status line
"
set laststatus=2

"
" MacVim
"
if has("gui_macvim")
  set guifont=menlo:h14
endif

"
" Mapping Key
"
let mapleader=","

noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

" Reload file
noremap <Leader>e :e<CR>
" Pane map
noremap <Leader>] :vertical resize +5<CR>
noremap <Leader>[ :vertical resize -5<CR>
" Tab map
noremap <Leader>tn :tabe<CR>
noremap <Leader>ta :tabp<CR>
noremap <Leader>td :tabn<CR>
" Pane map
noremap <Leader>sp :vsp<CR>
" Buffer map
noremap <Leader>bd :bunload<CR>
noremap <Leader>bn :bn<CR>
noremap <Leader>bp :bp<CR>
" NERDTree
noremap <Leader>/ :NERDTreeToggle<CR>

" Toggle
map <F3> :set number!<CR>
map <F4> :set invpaste<CR>
cnoremap q1 q!
cnoremap Q q
cnoremap Wq wq
cnoremap WQ wq

" CtrlP
let g:ctrlp_show_hidden = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|bower_components|dev/gae|dev/android)$'
  \,'file': '\v\.(swp|jar|png|jpg|gif|tgz|gz|pdf)$'
  \ }

" Specific filetype
" Markdown
let g:vim_markdown_folding_disabled=1
au FileType mkd set shiftwidth=4 tabstop=4 wrap

" EJS
au FileType ejs set filetype=html

" Go
au FileType go set noexpandtab tabstop=4 shiftwidth=4

