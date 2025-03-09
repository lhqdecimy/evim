" Options
set nocompatible
set ignorecase
set smartcase
filetype indent plugin on
syntax on

" Appearance
colorscheme habamax
set number
set relativenumber
set ruler
set cursorline
set termguicolors
set showmatch
set showcmd
set showmode
set wrap

" Status line
set laststatus=2
set statusline=\|\ %n\ %t\ %y\%m\ %w%q%h%=%S\ %l,%v\ \|

" Indent
set autoindent
set smartindent
set cindent

" Complete
set completeopt=menuone,preview,popup,longest,noinsert,noselect,fuzzy
set complete=.,b,k,w

" Tabs and shift
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

" Search
set incsearch
set hlsearch

set splitright
set splitbelow

set undofile
set exrc
set spell
set foldmethod=indent
set nofoldenable
set mouse=a
set virtualedit=onemore
set selection=exclusive
set autoread
