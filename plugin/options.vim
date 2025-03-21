" Options
set nocompatible
set ignorecase
set smartcase
filetype indent plugin on
syntax on

" Appearance
colorscheme habamax
highlight Normal guifg=#eeeeee guibg=#1c1c1c ctermfg=244 ctermbg=189
highlight StatusLine guifg=#eeeeee guibg=#005fff ctermfg=255 ctermbg=027 gui=NONE cterm=NONE
highlight StatusLineNC guifg=#eeeeee guibg=#005fff ctermfg=255 ctermbg=027 gui=NONE cterm=NONE
highlight EndOfBuffer guifg=bg guibg=bg ctermfg=bg ctermbg=bg gui=NONE cterm=NONE

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

set exrc
set spell
set foldmethod=indent
set nofoldenable
set mouse=a
set virtualedit=onemore
set selection=exclusive

set autoread
set noswapfile
set undofile
set hidden
set autowrite

" Cursor
let &t_SI = "\<Esc>[6 q"
let &t_EI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[6 q"

set smoothscroll
