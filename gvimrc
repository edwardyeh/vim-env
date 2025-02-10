"========================================
"=== Editor Environment =================
"========================================
set colorcolumn=80

"========================================
"=== Editor Environment =================
"========================================
if has('win32') && !has('win32unix')
    "language messages zh_TW.utf-8
    "language messages en_US.utf-8
    language messages utf-8

    "source $VIMRUNTIME/delmenu.vim
    "source $VIMRUNTIME/menu.vim

    set shell=C:\Windows\system32\cmd.exe
    set shellcmdflag=/c
    set guifont=DejaVu\ Sans\ Mono:h10
else
    set guifont=DejaVu\ Sans\ Mono\ 10
endif

"========================================
"=== Highlight Setting ==================
"========================================
colorscheme torte
syntax on

"" Editor
highlight LineNr            guifg=green
highlight CursorLineNr      gui=bold guifg=yellow guibg=#1c1c00
highlight StatusLine        gui=NONE guifg=white guibg=blue
highlight StatusLineNC      gui=NONE guifg=black guibg=Gray80
highlight VertSplit         gui=NONE guifg=black guibg=Gray80
highlight Title             guifg=magenta  
highlight Visual            gui=none guifg=DarkGrey guibg=#404040
highlight VisualNOS         gui=underline 
highlight Directory         guifg=#3c8ad9
highlight WildMenu          guifg=black guibg=yellow 
"highlight Pmenu             guibg=magenta 
highlight Pmenu             guibg=#87005f
highlight PmenuSel          guibg=white 
highlight PmenuSbar         guibg=white 
highlight PmenuThumb        gui=reverse 
highlight ColorColumn       guifg=Gray80 guibg=#1c1c1c
"" Cursor
highlight CursorLine        guibg=#1c1c00
highlight CursorColumn      guibg=#1c1c00
"highlight CursorColumn      gui=none guibg=#1c1c00 guifg=yellow
highlight Cursor            gui=bold guifg=bg guibg=fg
highlight lCursor           guifg=bg guibg=fg
"" Message
highlight ErrorMsg          guifg=white guibg=red
"highlight WarningMsg        guifg=darkred 
"highlight WarningMsg        guifg=red 
highlight WarningMsg        guifg=#af0000
highlight MoreMsg           guifg=green 
highlight Question          guifg=green 
"" Special
highlight IncSearch         gui=reverse
highlight Search            gui=NONE guifg=yellow guibg=black 
highlight MatchParen        gui=reverse guibg=cyan guifg=#075803
highlight DiffAdd           guibg=#00005f 
highlight DiffChange        guibg=#5f005f 
highlight DiffDelete        gui=NONE guifg=#767676 guibg=#1c1c1c
highlight DiffText          gui=NONE guibg=#5f0000 guifg=red 
highlight Folded            guifg=#dfaf5f guibg=black 
highlight FoldColumn        guifg=green guibg=black
highlight SpecialKey        gui=NONE guifg=blue
highlight NonText           gui=NONE guifg=blue
highlight SignColumn        guifg=green guibg=black 
highlight SpellBad          gui=reverse guibg=red 
highlight SpellCap          gui=reverse guibg=blue 
highlight SpellRare         gui=reverse guibg=magenta 
highlight SpellLocal        guibg=cyan
highlight TabLine           guifg=black guibg=white 
highlight TabLineFill       gui=reverse 
highlight Underlined        guifg=magenta 
"" Other
highlight Ignore            guifg=white guifg=bg
"highlight Error             guifg=white guibg=red 
highlight Error             guifg=white guibg=#af0000 
highlight Todo              gui=bold guifg=Gold3 guibg=black
"" YouCompleteMe
highlight YcmErrorSection   guibg=#5f0000
"" General Style
highlight Comment           guifg=#00bb00 
highlight Constant          guifg=#FF8000
highlight Special           guifg=magenta 
highlight Identifier        guifg=cyan 
highlight Statement         guifg=#3c8ad9 
highlight PreProc           guifg=magenta 
highlight Type              guifg=#3c8ad9
highlight Special           guifg=#bbbbbb
highlight String            guifg=#cf1500
"" C/C++ Style
highlight cStatement        guifg=#f7c709
highlight cLabel            guifg=#f7c709
highlight cConditional      guifg=#f7c709
highlight cRepeat           guifg=#f7c709
highlight cType             guifg=#3c8ad9
highlight cStructure        guifg=#3c8ad9
highlight cStorageClass     guifg=#3c8ad9
highlight cshVariables      guifg=magenta
""" vim-gitgutter
highlight GitGutterAdd      guifg=#0087ff guibg=black
highlight GitGutterChange   guifg=#00ff00 guibg=black
highlight GitGutterDelete   guifg=#ff005f guibg=black
""" markdown
highlight! link markdownError Normal
