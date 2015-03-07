" stytem determine
if(has("win32") || has("win64"))
    let g:isWIN = 1
else
    let g:isWIN = 0
endif

if g:isWIN
    source $VIM/vimfiles/bundles.vim
    set guifont=Consolas:h11
else
    source ~/.vim/bundles.vim
    set guifont=Consolas\ 11
endif

" :AuthorInfoDetect
let g:vimrc_author='raw34'
let g:vimrc_email='raw34@sina.com'

" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion
syntax on

"--------
" Vim UI
"--------
" color scheme
"set background=dark
"color solarized
colorscheme molokai

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" search
set incsearch
"set highlight 	" conflict with highlight current line
set ignorecase
set smartcase

" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors
"set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed
set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
set relativenumber                                                " show relativenumber

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space

"autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
"autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
"autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
"autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
"autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
"autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120


" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"-----------------
" Plugin settings
"-----------------
" niji
let g:niji_matching_filetypes = ['lisp', 'ruby', 'python', 'perl', 'php', 'c', 'cpp', 'java', 'javascript', 'html', 'php.laravel']
let g:niji_matching_characters = [
    \ ['(', ')'],
    \ ['\[', '\]'],
    \ ['{', '}'],
    \ ]

" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1

" tag for php
" if executable('phptags')
    " let g:tagbar_type_puppet = {
        " \ 'ctagstype': 'puppet',
        " \ 'kinds': [
            " \'c:class',
            " \'s:site',
            " \'n:node',
            " \'d:definition'
          " \]
        " \}
" endif

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

" nerdcommenter
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1

" ZenCoding
let g:user_emmet_expandabbr_key='<C-j>'

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType perl setlocal omnifunc=perlcomplete#Complete
autocmd FileType php setlocal omnifunc=phpcomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif

let g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'
let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" phpcomplete-extended
" autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
" let g:phpcomplete_index_composer_command="composer"

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" laravel4-snippets
autocmd FileType php set ft=php.laravel

" SuperTab
let g:SuperTabDefultCompletionType='context'
" let g:SuperTabDefaultCompletionType = '<C-X><C-O>'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2
let g:SuperTabCrMapping=1

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" xdebug
let g:vdebug_options = {
\    "port" : 9001,
\    "timeout" : 25,
\    "server" : 'localhost',
\    "on_close" : 'detach',
\    "break_on_open" : 1,
\    "ide_key" : '',
\    "debug_window_level" : 0,
\    "debug_file_level" : 0,
\    "debug_file" : "",
\    "path_maps" : {},
\    "watch_window_style" : 'expanded',
\    "marker_default" : '',
\    "marker_closed_tree" : '',
\    "marker_open_tree" : '',
\    "continuous_mode"  : 0
\}


" set cscope.files
function SetCscopeFiles ()
    if g:isWIN
        silent! execute '!dir /b *.h,*.c,*.cpp,*.java,*.py,*.pm,*.pl,*.php,*.js >> cscope.files'
    else
        silent! execute '!find . -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.java" -o -name "*.py" -o -name "*.pm" -o -name "*.pl" -o -name "*.php" -o -name "*.js" > cscope.files'
    endif

    silent! execute '!cscope -Rbq'
endfunction

" set ctags file
function SetCtagsFile ()
    if(executable("ctags"))
        " silent! execute '!ctags -R --fields=+aimS --languages=cpp -L cscope.files'
        " silent! execute '!ctags -R --fields=+aimS --languages=java -L cscope.files'
        " silent! execute '!ctags -R --fields=+aimS --languages=python -L cscope.files'
        " silent! execute '!ctags -R --fields=+aimS --languages=perl -L cscope.files'
        " silent! execute '!ctags -R --fields=+aimS --languages=php -L cscope.files'
        " silent! execute '!ctags -R --fields=+aimS --languages=javascript -L cscope.files'
        if filereadable("cscope.out")
            silent! execute '!ctags -R --fields=+aimS -L cscope.files'
        else
            silent! execute '!ctags -R --fields=+aimS'
        endif
    endif
endfunction

" cscope
if(executable("cscope") && has("cscope"))
    " set csprg=/usr/local/bin/cscope
    set cscopequickfix=s-,c-,d-,i-,t-,e-
    set csto=0
    set cst
    set csverb

    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
endif

" evervim
let g:evervim_host='app.yinxiang.com'
let g:evervim_devtoken='S=s37:U=72b2db:E=151d9d29814:C=14a82216ba0:P=1cd:A=en-devtoken:V=2:H=0f90f09e6419494bccaeae3e6df511ba'
"let g:evervim_host='www.evernote.com'
"let g:evervim_devtoken='S=s502:U=57a197b:E=151d2cd6946:C=14a7b1c3998:P=1cd:A=en-devtoken:V=2:H=55894c10fbb416a1152e895405008f58'

" Keybindings for plugin toggle
nmap <F1> :NERDTreeToggle<cr>
" nmap <F3> :GundoToggle<cr>
" nmap <F4> :IndentGuidesToggle<cr>
nmap <F8> :TagbarToggle<cr>
nmap <D-/> :
nnoremap <leader>a :Ack

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Quickly open bundle directory
if g:isWIN
    nmap <silent> <leader>eb :e $VIM/vimfiles/bundle<CR>
else
    nmap <silent> <leader>eb :e $HOME/.vim/bundle<CR>
endif

" sublime key bindings
nmap <D-]> >>
nmap <D-[> <<
vmap <D-[> <gv
vmap <D-]> >gv

" shortcut key
" \c                  copy to clipboard
vmap <leader>c "+y
" \v                  paste from clipboard
imap <leader>v <ESC>"+p
nmap <leader>v "+p
vmap <leader>v "+p

" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa
:command -nargs=1 Vres vertical resize <args>
:command CscopeFile call SetCscopeFiles() | cs reset
:command CtagsFile call SetCtagsFile() | set tags=tags

" for macvim
if has("gui_running")
    set go=aAce  " remove toolbar
    "set transparency=30
    set guioptions+=r
    set showtabline=2
    set columns=110
    set lines=25
    noremap <D-M-Left> :tabprevious<cr>
    noremap <D-M-Right> :tabnext<cr>
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>
endif
