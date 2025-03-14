xnoremap * :<C-u>call <Sid>VisualStarSetSearch('/')<Cr>/<C-r>/<Cr>
xnoremap # :<C-u>call <Sid>VisualStarSetSearch('?')<Cr>?<C-r>/<Cr>

function! s:VisualStarSetSearch(cmdline)
    let l:temp = @s
    normal! gv"sy
    let @/ = '\V' . substitute(escape(@s, '\' . a:cmdline), '\n', '\\n', 'g')
    let @s = l:temp
endfunction
