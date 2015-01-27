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
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
Bundle 'mattn/emmet-vim'
Bundle 'Raimondi/delimitMate'
" Bundle 'Valloric/YouCompleteMe'
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'ervandew/supertab'
" snippets
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'markwu/vim-laravel4-snippets'

"-----------------
" Fast navigation
"-----------------
Bundle 'edsono/vim-matchit'
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'humiaozuzu/TabBar'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'joonty/vdebug'
Bundle 'bling/vim-airline'

"-------------
" Other Utils
"-------------
"Bundle 'kakkyz81/evervim'
Bundle 'raw34/evervim'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
Bundle '2072/PHP-Indenting-for-VIm'
Bundle 'm2mdas/phpcomplete-extended'
" Bundle 'xsbeats/vim-blade'

"------- web frontend ----------
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'nono/jquery.vim'
Bundle 'groenewege/vim-less'

"------- markup language -------
Bundle 'tpope/vim-markdown'
" Bundle 'gabrielelana/vim-markdown'

"------- FPs ------
" Bundle 'kien/rainbow_parentheses.vim'
Bundle 'amdt/vim-niji'

"--------------
" Color Schemes
"--------------
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'

filetype plugin indent on     " required!
