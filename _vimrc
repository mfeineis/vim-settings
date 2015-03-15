if has('gui_running')
    set guifont=Lucida_Console:h10
endif

colorscheme visualstudio

set backspace=eol,start,indent

set number
set history=700

filetype plugin on
filetype indent on

set so=7

set ruler

inoremap kk <Esc>

set ignorecase
set smartcase

set magic " For regular expressions
set showmatch

set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable
set encoding=utf8

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

execute pathogen#infect()
let g:syntastic_javascript_checkers = ['jshint']

