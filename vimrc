"========================================
"=== Common Setting =====================
"========================================
if has('win32') && !has('win32unix')
    let s:vimcfg_path = '~/vimfiles'
    let s:ctags_bin   = 'C:\Users\Public\DevKit\Vim\ctags58\ctags.exe'
    let s:find_bin    = 'C:\Users\Public\DevKit\MSYS2-x64\usr\bin\find.exe'
    set listchars=tab:>.,trail:.,eol:$
    set backupdir=~/vimfiles/backup//
    set directory=~/vimfiles/swap//
    set undodir=~/vimfiles/undo//
elseif has('win32unix')
    let s:vimcfg_path = '~/.vim'
    let s:ctags_bin   = '/c/Users/Public/DevKit/Vim/ctags58/ctags.exe'
    let s:find_bin    = 'find'
    set listchars=tab:▷۰,trail:۰,eol:⌋
    set backupdir=~/.vim/backup//
    set directory=~/.vim/swap//
    set undodir=~/.vim/undo//
else
    let s:vimcfg_path = '~/.vim'
    let s:ctags_bin   = 'ctags'
    let s:find_bin    = 'find'
    set listchars=tab:▷۰,trail:۰,eol:⌋
    set backupdir=~/.vim/backup//
    set directory=~/.vim/swap//
    set undodir=~/.vim/undo//
endif

exec "source ".s:vimcfg_path."/comm-vim-env/vimrc"

"========================================
"=== Plugin Manager =====================
"========================================
""=== Vim-Plug
call plug#begin('~/.vim/plugged')
    Plug 'vim-plugins/nerdtree', {'on': 'NERDTreeToggle'}
    Plug 'itchyny/lightline.vim'
    Plug 'vim-scripts/ctags.vim'
    Plug 'chazy/cscope_maps'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
    Plug 'junegunn/fzf.vim'
    "Plug 'kien/ctrlp.vim'
    Plug 'will133/vim-dirdiff', {'on': 'DirDiff'}
    Plug 'vim-scripts/matchit.zip'
    Plug 'tpope/vim-surround'
    Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
    "Plug 'vim-scripts/taglist.vim', {'on': 'TlistToggle'}
    Plug 'michaeljsmith/vim-indent-object'
    Plug 'fholgado/minibufexpl.vim', {'on': 'MBEToggle'}
    Plug 'godlygeek/tabular'
    Plug 'scrooloose/nerdcommenter'
    "Plug 'vim-scriots/winmanager', {'on': 'WMToggle'}
    Plug 'gcmt/taboo.vim'
    Plug 'vim-scripts/vcscommand.vim'
    Plug 'vim-scripts/wokmarks.vim'
    "Plug 'ycm-core/YouCompleteMe'
call plug#end()

"========================================
"=== Plugin Setting =====================
"========================================
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

"=== NERDTree      {{{
nmap <leader>e :NERDTreeToggle<CR>
"nmap <C-a> <C-w><Left>
"nmap <C-s> <C-w><Right>
"nmap <C-d> <C-w><Up>
"nmap <C-f> <C-w><Down>
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

"=== Ctags         {{{
let Tlist_Ctags_Cmd = s:ctags_bin
"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"}}}

"=== Cscope        {{{
" open database: cs add path/xxx.out
" Hot key: Ctrl-s, Ctrl-c, cw
set cscopequickfix=s-,c-,d-,i-,t-,e- 
"}}}

"=== CtrlP         {{{
let g:ctrlp_map = ',,'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_max_files = 1000000
let g:ctrlp_user_command = s:find_bin.' %s -type f'
map ,. <ESC>:CtrlP .<CR>
"}}}

"=== DirDiff       {{{
let g:DirDiffExcludes = "CVS,*.svn,*.git,*.swp,tags"
"}}}

"=== Matchit       {{{
let b:match_words = "`ifdef:`endif,begin:end,module:endmodule"
"}}}
 
"=== Tagbar        {{{
let g:tagbar_ctags_bin = s:ctags_bin
let g:tagbar_left = 1
let g:tagbar_autofocus = 1
highlight link TagbarSignature Constant
map <leader>t <ESC>:TagbarToggle<CR>
"}}}

"=== Taglist       {{{
" active/unactive order:TlistToggle
"map <leader>t <ESC>:TlistToggle<CR>
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1
"}}}

"=== vim-indent-object      {{{
" vii   indent select
" vai   indent select include upper one level
"}}}

"=== MiniBufExplorer   {{{
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0
let g:miniBufExplorerAutoStart = 0
map <leader>et <ESC>:MBEToggle<CR>
"}}}

"=== Tabular        {{{
command! -range -nargs=+ TA <line1>,<line2>Tabularize/<args>/l0
command! -range -nargs=+ TR <line1>,<line2>Tabularize/<args>/r0
command! -range -nargs=+ TC <line1>,<line2>Tabularize/<args>/c0
command! -range -nargs=+ TAS <line1>,<line2>Tabularize/ <args>/l0
command! -range -nargs=+ TRS <line1>,<line2>Tabularize/ <args>/r0
command! -range -nargs=+ TCS <line1>,<line2>Tabularize/ <args>/c0
command! -range -nargs=+ TAF <line1>,<line2>Tabularize/<args> /l0
command! -range -nargs=+ TRF <line1>,<line2>Tabularize/<args> /r0
command! -range -nargs=+ TCF <line1>,<line2>Tabularize/<args> /c0
command! -range -nargs=+ TAD <line1>,<line2>Tabularize/ <args> /l0
command! -range -nargs=+ TRD <line1>,<line2>Tabularize/ <args> /r0
command! -range -nargs=+ TCD <line1>,<line2>Tabularize/ <args> /c0
command! -range -nargs=+ TAZ  <line1>,<line2>Tabularize/<args>\zs/c0
command! -range -nargs=+ TAFZ <line1>,<line2>Tabularize/<args>\zs /l0
command! -range -nargs=+ TRFZ <line1>,<line2>Tabularize/<args>\zs /r0
command! -range -nargs=+ TCFZ <line1>,<line2>Tabularize/<args>\zs /c0
command! -range -nargs=+ TAST exec <line1>.",".<line2>."TAS<args>" | <line1>,<line2>s/ <args>/<TAB><args>/g | retab
command! -range -nargs=+ TADT exec <line1>.",".<line2>."TAD<args>" | <line1>,<line2>s/ <args>/<TAB><args>/g | retab
command! -range          TEQ  exec <line1>.",".<line2>."TAD ="
command! -range          TCT  exec <line1>.",".<line2>."TAS\/\/" | <line1>,<line2>s/ \/\//<TAB>\/\/ /g | retab
"}}}

"=== NERD commenter     {{{
let g:NERDCustomDelimiters = {
    \ 'vim': { 'left': '"', 'leftAlt': '"', 'rightAlt': '"' },
\ }
"}}}

"=== Winmanager    {{{
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

"=== YouCompleteMe  {{{
"let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview

nnoremap <c-k> :YcmCompleter GoToDeclaration<CR>|
nnoremap <c-h> :YcmCompleter GoToDefinition<CR>|
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|

"let g:ycm_auto_hover = ''
nmap <leader>D <plug>(YCMHover)

let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1

let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:ycm_key_invoke_completion = ['<C-Space>']
"let g:ycm_key_list_stop_completion = ['<C-y>']
" let g:ycm_semantic_triggers =  {
" \   'c,cpp,python,java,go,erlang,perl':['re!\w{2}'],
" \   'cs,lua,javascript':['re!\w{2}'],
" \}
"}}}

