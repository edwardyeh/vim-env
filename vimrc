"========================================
"=== Editor Environment =================
"========================================
set nocompatible
set nu
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set showmode
set autoindent
set ruler
set nowrap
set hlsearch
set incsearch
set mouse=a
set guifont=DejaVu\ Sans\ Mono
set cursorline
set sessionoptions-=curdir
set sessionoptions+=sesdir
set fdm=marker
set backspace=2
set t_Co=256
set noro
set laststatus=2
"set diffexpr=
"set list

if has('win32') && !has('win32unix')
    set listchars=tab:>.,trail:.,eol:$
    set backupdir=~/vimfiles/backup//
    set directory=~/vimfiles/swap//
    set undodir=~/vimfiles/undo//
    let s:vimfiles_dir = 'vimfiles'
    let s:ctags_bin    = 'C:\Users\Public\DevKit\Vim\ctags58\ctags.exe'
    let s:find_bin     = 'C:\Users\Public\DevKit\MSYS2-x64\usr\bin\find.exe'
elseif has('win32unix')
    set listchars=tab:▷۰,trail:۰,eol:⌋
    set backupdir=~/.vim/backup//
    set directory=~/.vim/swap//
    set undodir=~/.vim/undo//
    let s:vimfiles_dir = '.vim'
    let s:ctags_bin    = '/c/Users/Public/DevKit/Vim/ctags58/ctags.exe'
    let s:find_bin     = 'find'
else
    set listchars=tab:▷۰,trail:۰,eol:⌋
    set backupdir=~/.vim/backup//
    set directory=~/.vim/swap//
    set undodir=~/.vim/undo//
    let s:vimfiles_dir = '.vim'
    let s:ctags_bin    = 'ctags'
    let s:find_bin     = 'find'
endif

set encoding=utf-8
"set fileencoding=utf-8
"set fileencodings=ansi,japan,korea,chinese,taiwan,utf-8
"set termencoding=utf-8

"========================================
"=== Add Syntax =========================
"========================================
au BufNewFile,BufRead .vim,.vimrc setf vim

"========================================
"=== Plugin Setting =====================
"========================================
""=== Vundle        {{{
set nocompatible
filetype off
let s:bundle_path = '~/'.s:vimfiles_dir.'/bundle/'
let &rtp = &rtp.','.s:bundle_path.'Vundle.vim'
call vundle#begin(s:bundle_path)

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-plugins/nerdtree'
Plugin 'ctags.vim'
Plugin 'chazy/cscope_maps'
Plugin 'kien/ctrlp.vim'
Plugin 'will133/vim-dirdiff'
Plugin 'matchit.zip'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
"Plugin 'taglist.vim'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vcscommand.vim'
Plugin 'wokmarks.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'godlygeek/tabular'
Plugin 'itchyny/lightline.vim'
Plugin 'gcmt/taboo.vim'
"Plugin 'winmanager'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'bling/vim-airline'

if !has('win32') && !has('win32unix')
    Plugin 'ShowMarks'
endif

call vundle#end()
filetype on
filetype plugin on
"}}}

""=== Powerline     {{{
"set laststatus=2
"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup
"}}}

""=== NERDTree      {{{
nmap <leader>e :NERDTreeToggle<CR>
"nmap <C-a> <C-w><Left>
"nmap <C-s> <C-w><Right>
"nmap <C-d> <C-w><Up>
"nmap <C-f> <C-w><Down>
"}}}

""=== Ctags         {{{
let Tlist_Ctags_Cmd = s:ctags_bin
"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"}}}

""=== Cscope        {{{
"" open database: cs add path/xxx.out
"" Hot key: Ctrl-s, Ctrl-c, cw
set cscopequickfix=s-,c-,d-,i-,t-,e- 
"}}}

""=== CtrlP         {{{
let g:ctrlp_map = ',,'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_max_files = 1000000
let g:ctrlp_user_command = s:find_bin.' %s -type f'
map ,. <ESC>:CtrlP .<CR>
"}}}

""=== DirDiff       {{{
let g:DirDiffExcludes = "CVS,*.svn,*.git,*.swp,tags"
"}}}

""=== Matchit       {{{
let b:match_words = "`ifdef:`endif,begin:end,module:endmodule"
"}}}
 
""=== Tagbar        {{{
let g:tagbar_ctags_bin = s:ctags_bin
let g:tagbar_left = 1
let g:tagbar_autofocus = 1
highlight link TagbarSignature Constant
map <leader>t <ESC>:TagbarToggle<CR>
"}}}

""=== Taglist       {{{
"" active/unactive order:TlistToggle
"map <leader>t <ESC>:TlistToggle<CR>
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1
"}}}

""=== ShowMarks     {{{
let g:showmarks_enable=0
"}}}

""=== SrcExpl       {{{
"" active/unactive order:SrcExplToggle
"map <leader>s <ESC>:SrcExplToggle<CR>
"}}}

""=== OmniCppComplete   {{{
"set nocp
"" filetype plugin on
"}}}

""=== SuperTab      {{{
"" hot key: <Tab>
" let g:SuperTabDefaultCompletionType="context"
"}}}

""=== MiniBufExplorer   {{{
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0
let g:miniBufExplorerAutoStart = 0
map <leader>et <ESC>:MBEToggle<CR>
"}}}

""=== Winmanager    {{{
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
"}}}

"=== Tabular        {{{
command! -range -nargs=+ TA <line1>,<line2>Tab/<args>/l0
command! -range -nargs=+ TR <line1>,<line2>Tab/<args>/r0
command! -range -nargs=+ TC <line1>,<line2>Tab/<args>/c0
command! -range -nargs=+ TAS <line1>,<line2>Tab/ <args>/l0
command! -range -nargs=+ TRS <line1>,<line2>Tab/ <args>/r0
command! -range -nargs=+ TCS <line1>,<line2>Tab/ <args>/c0
command! -range -nargs=+ TAF <line1>,<line2>Tab/<args> /l0
command! -range -nargs=+ TRF <line1>,<line2>Tab/<args> /r0
command! -range -nargs=+ TCF <line1>,<line2>Tab/<args> /c0
command! -range -nargs=+ TAD <line1>,<line2>Tab/ <args> /l0
command! -range -nargs=+ TRD <line1>,<line2>Tab/ <args> /r0
command! -range -nargs=+ TCD <line1>,<line2>Tab/ <args> /c0
command! -range -nargs=+ TAZ  <line1>,<line2>Tab/<args>\zs/c0
command! -range -nargs=+ TAFZ <line1>,<line2>Tab/<args>\zs /l0
command! -range -nargs=+ TRFZ <line1>,<line2>Tab/<args>\zs /r0
command! -range -nargs=+ TCFZ <line1>,<line2>Tab/<args>\zs /c0
command! -range -nargs=+ TAST exec <line1>.",".<line2>."TAS<args>" | <line1>,<line2>s/ <args>/<TAB><args>/g | retab
command! -range -nargs=+ TADT exec <line1>.",".<line2>."TAD<args>" | <line1>,<line2>s/ <args>/<TAB><args>/g | retab
command! -range          TEQ  exec <line1>.",".<line2>."TAD ="
command! -range          TCT  exec <line1>.",".<line2>."TAS\/\/" | <line1>,<line2>s/ \/\//<TAB>\/\/ /g | retab
"}}}

"=== vim-indent-object      {{{
" vii   indent select
" vai   indent select include upper one level
"}}}

"=== NERD commenter     {{{
let g:NERDCustomDelimiters = {
    \ 'vim': { 'left': '"', 'leftAlt': '"', 'rightAlt': '"' },
\ }
"}}}

"=== IDE Setting    {{{
function IDEOpen ()
    exec "MBEOpen"
    exec "NERDTree"
endfunction

function IDEClose ()
    exec "MBEClose"
    exec "NERDTreeClose"
endfunction
function IDEToggle ()
    exec "MBEToggle"
    exec "NERDTreeToggle"
endfunction

nmap <leader>ws <ESC>:call IDEOpen()<CR>
nmap <leader>wc <ESC>:call IDEClose()<CR>
nmap <leader>wt <ESC>:call IDEToggle()<CR>
"}}}

"=== Lightline  {{{
set noshowmode
let g:lightline = {
    \   'inactive': {
    \       'left':   [ ['readonly', 'filename', 'modified'] ],
    \       'right':  [ ['lineinfo'], ['percent'], ['fileformat', 'fileencoding', 'filetype'] ],
    \   },
    \ }
"}}}

"========================================
"=== Personal Setting ===================
"========================================
command! FS     set fdm=syntax
command! FM     set fdm=marker
command! SC     set syntax=c
command! SV     set syntax=verilog
command! SCS    set syntax=tcsh
command! SBS    set syntax=bash
command! VRC    vsp ~/.vimrc
command! GRC    vsp ~/.gvimrc
command! DON    set diff scrollbind fdm=diff
command! DOF    set nodiff noscrollbind fdm=marker
command! B2H    %!xxd

" Comment
command! -range -nargs=+ C   <line1>,<line2>s!^\( *.\)!<args>\1!g
command! -range -nargs=+ CY  <line1>,<line2>s!^\( *\)\(.\)!\1<args>\2!g
command! -range -nargs=+ CD  <line1>,<line2>s!^\( *\)<args>!\1!g

" Delete redundant space
command! -range -nargs=+ DSS   <line1>,<line2>s/ *\( <args>\)/\1/g
command! -range -nargs=+ DSD   <line1>,<line2>s/ *\(<args> \) */\1/g
command! -range -nargs=+ DSF   <line1>,<line2>s/\(<args> \) */\1/g
command! -range          DST   <line1>,<line2>s/ *$//g
command! -range          DSA   <line1>,<line2>s/\(\S\)  *\(\S\)/\1 \2/g
command! -range          VA    exec <line1>.",".<line2>."DSA" | <line1>,<line2>Tab/ /l0
command! -range -nargs=+ VADSF exec <line1>.",".<line2>."VA" | exec <line1>.",".<line2>."DSF<args>"

" Add Tab
command! -range -nargs=+ TBS <line1>,<line2>s/<args>/<TAB><args>/g | retab
command! -range -nargs=+ TBF <line1>,<line2>s/<args>/<args><TAB>/g | retab

" Brackets alignment
command! -range LB  exec <line1>.",".<line2>."TAS (" | <line1>,<line2>s/ (/<TAB>(/g | retab
command! -range RB  exec <line1>.",".<line2>."TAS )" | <line1>,<line2>s/ )/<TAB>)/g | retab
command! -range LRB exec <line1>.",".<line2>."LB" | exec <line1>.",".<line2>."RB"

" Verilog
command! -range DOT <line1>,<line2>s/^\(  *\)\([0-9a-zA-Z]\)/\1.\2/g | retab
command! -range CA  <line1>,<line2>s+;+; //+g | exec <line1>.",".<line2>."TCT"

" Other
command! -nargs=+ TN tabn <args>

"========================================
"=== Highlight Setting ==================
"========================================
colorscheme torte
syntax on

"" Editor
highlight LineNr            ctermfg=28 
highlight CursorLineNr      cterm=bold ctermfg=11
highlight StatusLine        cterm=NONE ctermfg=15 ctermbg=21
highlight StatusLineNC      cterm=reverse
highlight VertSplit         cterm=reverse
highlight Title             ctermfg=13 
highlight Visual            ctermfg=238 ctermbg=250 
highlight VisualNOS         cterm=underline 
highlight Directory         ctermfg=32
highlight WildMenu          ctermfg=0 ctermbg=11
highlight Pmenu             ctermfg=252 ctermbg=13 guibg=Magenta
highlight PmenuSel          ctermbg=15 
highlight PmenuSbar         ctermbg=15 
highlight PmenuThumb        cterm=reverse                            
"" Cursor 
highlight CursorLine        cterm=NONE ctermbg=234
highlight CursorColumn      cterm=reverse ctermbg=15 
"highlight Cursor            ctermfg=bg ctermbg=fg
"highlight lCursor           ctermfg=bg ctermbg=fg
"" Message
highlight ErrorMsg          ctermfg=15 ctermbg=9
"highlight WarningMsg        ctermfg=darkred 
highlight WarningMsg        ctermfg=124 
highlight MoreMsg           ctermfg=10 
highlight Question          ctermfg=10 
"" Special
highlight IncSearch         cterm=reverse
highlight Search            cterm=NONE ctermfg=11 ctermbg=0 
highlight MatchParen        cterm=reverse ctermbg=14 ctermfg=28
highlight DiffAdd           ctermbg=17 
highlight DiffChange        ctermbg=53 
highlight DiffDelete        cterm=NONE ctermfg=243 ctermbg=234
highlight DiffText          cterm=NONE ctermbg=52 ctermfg=9 
highlight Folded            ctermfg=179 ctermbg=0 
highlight FoldColumn        ctermfg=10 ctermbg=0
highlight SpecialKey        ctermfg=21
highlight NonText           ctermfg=21
highlight SignColumn        ctermfg=10 ctermbg=0 
highlight SpellBad          cterm=reverse ctermbg=9 
highlight SpellCap          cterm=reverse ctermbg=21 
highlight SpellRare         cterm=reverse ctermbg=13 
highlight SpellLocal        ctermbg=14
highlight TabLine           ctermfg=0 ctermbg=15 
highlight TabLineFill       cterm=reverse 
highlight Underlined        ctermfg=13 
"" Other
highlight Ignore            ctermfg=15 ctermfg=0
highlight Error             ctermfg=15 ctermbg=9
highlight Todo              ctermfg=0 ctermbg=11 
"" General Style
highlight Normal            ctermfg=252
highlight Comment           ctermfg=34
highlight Constant          ctermfg=208
highlight Special           ctermfg=252
highlight Identifier        cterm=none ctermfg=14 
highlight Statement         ctermfg=32
highlight PreProc           ctermfg=13 
highlight Type              ctermfg=32
highlight String            ctermfg=1
highlight Define            cterm=none ctermfg=13
"" C/C++ Style
highlight cStatement        ctermfg=220
highlight cLabel            ctermfg=220
highlight cConditional      ctermfg=220
highlight cRepeat           ctermfg=220
highlight cType             ctermfg=32
highlight cStructure        ctermfg=32
highlight cStorageClass     ctermfg=32
highlight cshVariables      ctermfg=13
