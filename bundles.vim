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
" Supertab
Bundle 'ervandew/supertab'
"自动补全括号
Bundle 'Raimondi/delimitMate'

"-----------------
" Fast navigation
"-----------------
"括号前后移动
Bundle 'adelarsq/vim-matchit'
"当前文件搜索
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
"替换字符串包裹符号
Bundle 'tpope/vim-surround'
"快速注释
Bundle 'scrooloose/nerdcommenter'
"vim撤销树
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
"查找替换
Bundle 'mileszs/ack.vim'
"查找文件
Bundle 'kien/ctrlp.vim'
"git命令
Bundle 'tpope/vim-fugitive'
"语法提示
Bundle 'scrooloose/syntastic'
"空白符高亮
Bundle 'bronson/vim-trailing-whitespace'
"工具条
Bundle 'bling/vim-airline'

"-------------
" Other Utils
"-------------
"彩虹括号
Bundle 'raymond-w-ko/vim-niji'

"--------------
" Color Schemes
"--------------
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'

filetype plugin indent on     " required!
