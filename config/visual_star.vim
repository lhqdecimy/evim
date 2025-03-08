xnoremap * :<C-u>call EVisualStarSetSearch('/')<Cr>/<C-r>/<Cr>
xnoremap # :<C-u>call EVisualStarSetSearch('?')<Cr>?<C-r>/<Cr>

function! EVisualStarSetSearch(cmdline)
    let l:temp = @s
    normal! gv"sy
    let @/ = '\V' . substitute(escape(@s, '\' . a:cmdline), '\n', '\\n', 'g')
    let @s = l:temp
endfunction
