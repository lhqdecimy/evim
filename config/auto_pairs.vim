" Remap
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

inoremap <silent> <Backspace> <C-o>:call EDeletePairs()<Cr><Backspace>

inoremap <silent> <Cr> <C-o>:call ENewLine()<Cr><Cr>

function! EDeletePairs()
    let l:line = getline('.')
    let l:column = col('.')
    let l:right = l:line[l:column - 1]
    if l:column - 2 >= 0
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
        elseif l:left ==# '<' && l:right ==# '>'
            normal! x
        endif
    endif
endfunction

function! ENewLine()
    let l:line = getline('.')
    let l:column = col('.')
    let l:right = l:line[l:column - 1]
    if l:column - 2 >= 0
        let l:left = l:line[l:column - 2]
        if l:left ==# '{' && l:right ==# '}'
            if l:column ==# 2
                execute "normal! i\<Cr>\<Backspace>\<Esc>kA"
            else
                execute "normal! i\<Cr>\<Esc>kA"
            endif
        endif
    endif
endfunction
