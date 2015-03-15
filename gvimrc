"========================================
"=== Editor Environment =================
"========================================
set nocompatible
set nu
set tabstop=4
set shiftwidth=4
set expandtab
set showmode
set autoindent
set ruler
set nowrap
set nohlsearch
set encoding=utf-8
set guifont=DejaVu\ Sans\ Mono\ 10
set cursorline
set sessionoptions-=curdir
set sessionoptions+=sesdir
set fdm=marker
set backspace=2
set listchars=tab:▷۰,trail:۰,eol:⌋
"set diffexpr=
"set list

"========================================
"=== Highlight Setting ==================
"========================================
colorscheme torte
syntax on

"" Editor
highlight LineNr            guifg=green
highlight CursorLineNr      gui=bold guifg=yellow
highlight StatusLine        gui=NONE guifg=white guibg=blue
highlight StatusLineNC      gui=NONE guifg=black guibg=Gray80
highlight VertSplit         gui=NONE guifg=black guibg=Gray80
highlight Title             guifg=magenta  
highlight Visual            gui=reverse 
highlight VisualNOS         gui=underline 
highlight Directory         guifg=#3c8ad9
highlight WildMenu          guifg=black guibg=yellow 
highlight Pmenu             guibg=magenta 
highlight PmenuSel          guibg=white 
highlight PmenuSbar         guibg=white 
highlight PmenuThumb        gui=reverse 
"" Cursor
highlight CursorLine        guibg=#1c1c00
highlight CursorColumn      gui=reverse guibg=white 
highlight Cursor            guifg=bg guibg=fg
highlight lCursor           guifg=bg guibg=fg
"" Message
highlight ErrorMsg          guifg=white guibg=red
"highlight WarningMsg        guifg=darkred 
highlight WarningMsg        guifg=red 
highlight MoreMsg           guifg=green 
highlight Question          guifg=green 
"" Special
highlight IncSearch         gui=reverse
highlight Search            gui=NONE guifg=yellow guibg=black 
"highlight MatchParen        gui=reverse guibg=cyan 
highlight MatchParen        guifg=#075803
highlight DiffAdd           guibg=#00005f 
highlight DiffChange        guibg=#5f005f 
highlight DiffDelete        gui=NONE guifg=#767676 guibg=#1c1c1c
highlight DiffText          gui=NONE guibg=#5f0000 guifg=red 
highlight Folded            guifg=#dfaf5f guibg=black 
highlight FoldColumn        guifg=green guibg=black
highlight SpecialKey        guifg=blue
highlight NonText           guifg=blue
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
highlight Error             guifg=white guibg=red 
highlight Todo              guifg=black guibg=yellow 
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

