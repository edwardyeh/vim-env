
" 定義 Tcl proc 的摺疊區塊：從 proc 開始到結尾的 }
syntax region tclFunc 
    \ start="^\z(\s*\)proc.*{$" 
    \ end="^\z1}$" 
    \ transparent 
    \ fold 
    \ contains=ALL

function! SetTclFolding()
    setlocal foldmethod=syntax
    setlocal foldlevel=99

    syntax region tclFunc 
        \ start="^\z(\s*\)proc.*{$" 
        \ end="^\z1}$" 
        \ transparent 
        \ fold 
        \ contains=ALL
endfunction

