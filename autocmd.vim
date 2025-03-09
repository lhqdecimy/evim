augroup EFileType
    autocmd FileType makefile setlocal noet
    autocmd FileType c,cpp,ruby setlocal ts=2 sts=2
    autocmd FileType rust setlocal makeprg=cargo
    autocmd FileType go setlocal makeprg=go
augroup END

augroup ELastPlace
    autocmd BufReadPost * normal! g'"
augroup END

augroup EInsert
    autocmd InsertLeave * normal! `^
augroup END

augroup ESaveView
    autocmd BufWinLeave,BufLeave,BufWritePost * silent! mkview
    autocmd BufWinEnter * silent! loadview
augroup END
