" stytem determine
if(has("win32") || has("win64"))
    let g:isWIN = 1
else
    let g:isWIN = 0
endif

if g:isWIN
    source $VIM/vimfiles/bundles.vim
    set guifont=Consolas:h10
else
    source ~/.vim/bundles.vim
    set guifont=Consolas\ 11
endif

" :AuthorInfoDetect
let g:vimrc_author='raw34'
let g:vimrc_email='raw0034@gmail.com'

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


"-----------------
" Plugin settings
"-----------------
" niji
let g:niji_matching_filetypes = ['html','lisp', 'ruby', 'python', 'perl', 'php', 'c', 'cpp', 'java', 'javascript', 'go']
let g:niji_matching_characters = [
    \ ['(', ')'],
    \ ['\[', '\]'],
    \ ['{', '}'],
    \ ]

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

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

" SuperTab
let g:SuperTabDefultCompletionType='context'
" let g:SuperTabDefaultCompletionType = '<C-X><C-O>'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2
let g:SuperTabCrMapping=1

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

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
" \cle
nmap <leader>cle :%s/\s\+$//g<CR>
" \cls
nmap <leader>cls :%s/^\s\+$//g<CR>
" \cln
nmap <leader>cln :g/^\s*$/d<CR>

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
