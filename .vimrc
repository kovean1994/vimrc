set nocompatible              " be iMproved, required
filetype off                  " required

" ==============================================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" ==============================================================================
" 安装的所有插件
call vundle#begin()

" 必须安装，let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 来自github
Plugin 'flazz/vim-colorschemes'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
" 来自vim

" non github repos

call vundle#end()            " required

" ==============================================================================
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" ==============================================================================
" vundle命令
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" ==============================================================================
" 组件设置
" flazz/vim-colorschemes,主题设置
colorscheme  codeschool

"NERDTree 插件配置
map <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden = 1 "NERDTREE显示隐藏文件 
" ==============================================================================
" vim原生设置
" set rnu "显示相对行号
set nu
syntax on " 打开语法检测

set tabstop=2 "设置tab键长度
set sw=2
set ts=2

set list "设置空格显示为+号
set listchars=trail:+

set foldmethod=syntax "代码折叠
set foldlevelstart=99 "默认不折叠

set cursorline  "设置光标行
set noswapfile "不要生成swap文件
set nobackup
set bufhidden=hide "当buffer被丢弃的时候隐藏它
set guicursor=n-v-c:hor10 "normal下贯标显示为下划线
set expandtab                 "Use space instead of tabs

let mapleader = ","  "设置外部复制粘帖
let g:mapleader = ","  
map Y "+y
map P "+p

noremap oo o<esc> "插入新行

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm.app"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
