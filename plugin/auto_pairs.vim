" Remap
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>

inoremap <silent> ) <C-o>:call <Sid>LeavePairs(')')<Cr>
inoremap <silent> ] <C-o>:call <Sid>LeavePairs(']')<Cr>
inoremap <silent> } <C-o>:call <Sid>LeavePairs('}')<Cr>
inoremap <silent> ' <C-o>:call <Sid>LeavePairs("'")<Cr>
inoremap <silent> " <C-o>:call <Sid>LeavePairs('"')<Cr>

inoremap <silent> <Backspace> <C-o>:call <Sid>DeletePairs()<Cr><Backspace>
inoremap <silent> <Cr> <C-o>:call <Sid>NewLine()<Cr><Cr>

function! s:LeavePairs(right)
    let l:line = getline('.')
    let l:column = col('.')
    let l:right = l:line[l:column -1]
    if l:right ==# a:right
        normal! a
    elseif ["'", '"']->index(a:right) != -1
        execute 'normal! i' . a:right . a:right . "\<Left>"
    else
        execute 'normal! i' . a:right
    endif
endfunction

function! s:DeletePairs()
    let l:line = getline('.')
    let l:column = col('.')

    let l:right = l:line[l:column - 1]
    let l:left = l:line[l:column - 2]

    if l:left ==# '(' && l:right ==# ')'
        normal! x
    elseif l:left ==# '[' && l:right ==# ']'
        normal! x
    elseif l:left ==# '{' && l:right ==# '}'
        normal! x
    elseif l:left ==# "'" && l:right ==# "'"
        normal! x
    elseif l:left ==# '"' && l:right ==# '"'
        normal! x
    endif
endfunction

function! s:NewLine()
    let l:line = getline('.')
    let l:column = col('.')
    let l:right = l:line[l:column - 1]
    if l:column - 2 >= 0
        let l:left = l:line[l:column - 2]
        if l:left ==# '{' && l:right ==# '}' || l:left==#'('&&l:right==#')' || l:left==#'['&&l:right==#']'
            execute "normal! A\<Left>\<Cr>\<Esc>kA"
        endif
    endif
endfunction
