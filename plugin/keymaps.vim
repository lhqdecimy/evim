" Leader
let g:mapleader = ' '

nnoremap $ $l

" Search
nnoremap <Cr> <Cmd>nohl<Cr>

" Window
nnoremap <C-s> <Cmd>vertical split<Cr>
nnoremap <C-Up> <Cmd>horizontal resize +1<Cr>
nnoremap <C-Down> <Cmd>horizontal resize -1<Cr>
nnoremap <C-Left> <Cmd>vertical resize +1<Cr>
nnoremap <C-Right> <Cmd>vertical resize -1<Cr>

" Paste
nnoremap p i<C-r>0
nnoremap P i<C-r>"

" Terminal
nnoremap <C-t> <Cmd>terminal<Cr>

" Insert mod
inoremap <C-i> <C-o>I
inoremap <C-a> <C-o>A
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap jk <Esc>
