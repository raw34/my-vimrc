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
" Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'ervandew/supertab'
" snippets
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'markwu/vim-laravel4-snippets'

"-----------------
" Fast navigation
"-----------------
"括号前后移动
Bundle 'edsono/vim-matchit'
"当前文件搜索
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
"替换字符串包裹符号
Bundle 'tpope/vim-surround'
"快速注释
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
"自动对齐
Bundle 'godlygeek/tabular'
"缩进深度，鼠标位置有十字定位
Bundle 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
"目录树
Bundle 'scrooloose/nerdtree'
"导航栏
Bundle 'humiaozuzu/TabBar'
"标签栏
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
"查找文件
Bundle 'kien/ctrlp.vim'
"git命令
Bundle 'tpope/vim-fugitive'
"语法提示
Bundle 'scrooloose/syntastic'
"空白符高亮
Bundle 'bronson/vim-trailing-whitespace'
"debug工具
Bundle 'joonty/vdebug'
"工具条
Bundle 'bling/vim-airline'

"-------------
" Other Utils
"-------------
"evernote插件
"Bundle 'kakkyz81/evervim'
Bundle 'raw34/evervim'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
"php语法
Bundle '2072/PHP-Indenting-for-VIm'
" Bundle 'm2mdas/phpcomplete-extended'
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
" Bundle 'amdt/vim-niji'
Bundle 'darvelo/vim-niji'

"--------------
" Color Schemes
"--------------
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'

filetype plugin indent on     " required!
