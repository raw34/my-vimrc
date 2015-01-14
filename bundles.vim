set nocompatible               " be iMproved
filetype off                   " required!

if g:isWIN
    set rtp+=$VIM/vimfiles/bundle/vundle/
    call vundle#rc('$VIM/vimfiles/bundle/')
else
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
endif

" let Vundle manage Vundle
" required!
Bundle 'git@github.com:gmarik/vundle.git'

"------------------
" Code Completions
"------------------
Bundle 'git@github.com:mattn/emmet-vim.git'
Bundle 'git@github.com:Raimondi/delimitMate.git'
" Bundle 'git@github.com:Valloric/YouCompleteMe.git'
Bundle 'git@github.com:Shougo/neocomplcache.git'
Bundle 'git@github.com:ervandew/supertab.git'
" snippets
Bundle 'git@github.com:SirVer/ultisnips.git'
Bundle 'git@github.com:honza/vim-snippets.git'

"-----------------
" Fast navigation
"-----------------
Bundle 'git@github.com:edsono/vim-matchit.git'
Bundle 'git@github.com:Lokaltog/vim-easymotion.git'

"--------------
" Fast editing
"--------------
Bundle 'git@github.com:tpope/vim-surround.git'
Bundle 'git@github.com:scrooloose/nerdcommenter.git'
Bundle 'git@github.com:sjl/gundo.vim.git'
Bundle 'git@github.com:godlygeek/tabular.git'
Bundle 'git@github.com:nathanaelkane/vim-indent-guides.git'

"--------------
" IDE features
"--------------
Bundle 'git@github.com:scrooloose/nerdtree.git'
Bundle 'git@github.com:humiaozuzu/TabBar.git'
Bundle 'git@github.com:majutsushi/tagbar.git'
Bundle 'git@github.com:mileszs/ack.vim.git'
Bundle 'git@github.com:kien/ctrlp.vim.git'
Bundle 'git@github.com:tpope/vim-fugitive.git'
Bundle 'git@github.com:scrooloose/syntastic.git'
Bundle 'git@github.com:bronson/vim-trailing-whitespace.git'
Bundle 'git@github.com:joonty/vdebug.git'
Bundle 'git@github.com:bling/vim-airline.git'

"-------------
" Other Utils
"-------------
"Bundle 'git@github.com:kakkyz81/evervim.git'
Bundle 'git@github.com:raw34/evervim.git'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
Bundle 'git@github.com:2072/PHP-Indenting-for-VIm.git'

"------- web frontend ----------
Bundle 'git@github.com:othree/html5.vim.git'
Bundle 'git@github.com:pangloss/vim-javascript.git'
Bundle 'git@github.com:nono/jquery.vim.git'
Bundle 'git@github.com:groenewege/vim-less.git'

"------- markup language -------
Bundle 'git@github.com:tpope/vim-markdown.git'

"------- FPs ------
" Bundle 'git@github.com:kien/rainbow_parentheses.vim.git'

"--------------
" Color Schemes
"--------------
Bundle 'git@github.com:altercation/vim-colors-solarized.git'
Bundle 'git@github.com:tomasr/molokai.git'

filetype plugin indent on     " required!
