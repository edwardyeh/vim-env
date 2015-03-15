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
set mouse=a
set encoding=utf-8
set guifont=DejaVu\ Sans\ Mono
set cursorline
set sessionoptions-=curdir
set sessionoptions+=sesdir
set fdm=marker
set backspace=2
set t_Co=256
set listchars=tab:▷۰,trail:۰,eol:⌋
"set diffexpr=
"set list

"========================================
"=== Plugin Setting =====================
"========================================
""=== Ctags
"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

""=== Cscope
"" open database: cs add path/xxx.out
"" Hot key: Ctrl-s, Ctrl-c, cw
set cscopequickfix=s-,c-,d-,i-,t-,e- 

""=== Vundle
"set nocompatible
"filetype off
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"
"Plugin 'gmarik/Vundle.vim'
"Plugin 'vim-plugins/nerdtree'
"Plugin 'kien/ctrlp.vim'
"Plugin 'will133/vim-dirdiff'
"Plugin 'matchit.zip'
"Plugin 'surround.vim'
""Plugin 'winmanager'
""Plugin 'Lokaltog/vim-powerline'
""Plugin 'bling/vim-airline'
"
"call vundle#end()
"filetype plugin indent on

""=== NERDTree
"nmap <leader>e :NERDTreeToggle<CR>
"nmap <C-a> <C-w><Left>
"nmap <C-s> <C-w><Right>
"nmap <C-d> <C-w><Up>
"nmap <C-f> <C-w><Down>

""=== CtrlP
"let g:ctrlp_map = ',,'
 
""=== Taglist 
"" active/unactive order:TlistToggle
"map <leader>t <ESC>:TlistToggle<CR>
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1

""=== SrcExpl
"" active/unactive order:SrcExplToggle
"map <leader>s <ESC>:SrcExplToggle<CR>

""=== OmniCppComplete
"set nocp
"" filetype plugin on

""=== SuperTab
"" hot key: <Tab>
" let g:SuperTabDefaultCompletionType="context"

""=== MiniBufExplorer
" let g:miniBufExplMapWindowNavVim = 1 
" let g:miniBufExplMapWindowNavArrows = 1 
" let g:miniBufExplMapCTabSwitchBufs = 1 
" let g:miniBufExplModSelTarget = 1
" let g:miniBufExplMoreThanOne=0

""=== Winmanager
"let g:NERDTree_title="[NERDTree]"
"let g:winManagerWindowLayout="NERDTree|TagList"
"
"function! NERDTree_Start()
"    exec 'NERDTree'
"endfunction
"
"function! NERDTree_IsValid()
"    return 1
"endfunction
"
"nmap wm :WMToggle<CR>

"========================================
"=== Personal Setting ===================
"========================================
command! VRC vsp ~/.vimrc
command! GRC vsp ~/.gvimrc
command! SD set diff scrollbind fdm=diff
command! ND set nodiff noscrollbind fdm=marker

"========================================
"=== Highlight Setting ==================
"========================================
syntax on

"" Editor
highlight LineNr            ctermfg=green 
highlight CursorLineNr      cterm=bold ctermfg=yellow
highlight StatusLine        cterm=NONE ctermfg=white ctermbg=blue
highlight StatusLineNC      cterm=reverse
highlight VertSplit         cterm=reverse
highlight Title             ctermfg=magenta  
highlight Visual            ctermbg=238 
highlight VisualNOS         cterm=underline 
highlight Directory         ctermfg=blue
highlight WildMenu          ctermfg=black ctermbg=yellow 
highlight Pmenu             ctermbg=magenta 
highlight PmenuSel          ctermbg=white 
highlight PmenuSbar         ctermbg=white 
highlight PmenuThumb        cterm=reverse                            
"" Cursor 
highlight CursorLine        cterm=NONE ctermbg=234
highlight CursorColumn      cterm=reverse ctermbg=white 
"highlight Cursor            ctermfg=bg ctermbg=fg
"highlight lCursor           ctermfg=bg ctermbg=fg
"" Message
highlight ErrorMsg          ctermfg=white ctermbg=red
"highlight WarningMsg        ctermfg=darkred 
highlight WarningMsg        ctermfg=red 
highlight MoreMsg           ctermfg=green 
highlight Question          ctermfg=green 
"" Special
highlight IncSearch         cterm=reverse
highlight Search            cterm=NONE ctermfg=yellow ctermbg=black 
"highlight MatchParen        cterm=reverse ctermbg=cyan 
highlight MatchParen        ctermfg=28
highlight DiffAdd           ctermbg=17 
highlight DiffChange        ctermbg=53 
highlight DiffDelete        cterm=NONE ctermfg=243 ctermbg=234
highlight DiffText          cterm=NONE ctermbg=52 ctermfg=red 
highlight Folded            ctermfg=179 ctermbg=black 
highlight FoldColumn        ctermfg=green ctermbg=black
highlight SpecialKey        ctermfg=blue
highlight NonText           ctermfg=blue
highlight SignColumn        ctermfg=green ctermbg=black 
highlight SpellBad          cterm=reverse ctermbg=red 
highlight SpellCap          cterm=reverse ctermbg=blue 
highlight SpellRare         cterm=reverse ctermbg=magenta 
highlight SpellLocal        ctermbg=cyan
highlight TabLine           ctermfg=black ctermbg=white 
highlight TabLineFill       cterm=reverse 
highlight Underlined        ctermfg=magenta 
"" Other
highlight Ignore            ctermfg=white ctermfg=black
highlight Error             ctermfg=white ctermbg=red 
highlight Todo              ctermfg=black ctermbg=yellow 
"" General Style
highlight Comment           ctermfg=DarkGreen
highlight Constant          ctermfg=208
highlight Special           ctermfg=magenta 
highlight Identifier        ctermfg=cyan 
highlight Statement         ctermfg=12
highlight PreProc           ctermfg=magenta 
highlight Type              ctermfg=12
highlight Special           ctermfg=250
highlight String            ctermfg=1
"" C/C++ Style
highlight cStatement        ctermfg=220
highlight cLabel            ctermfg=220
highlight cConditional      ctermfg=220
highlight cRepeat           ctermfg=220
highlight cType             ctermfg=12
highlight cStructure        ctermfg=12
highlight cStorageClass     ctermfg=12
highlight cshVariables      ctermfg=magenta

