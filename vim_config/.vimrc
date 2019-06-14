"去掉vi的一致性"
set nocompatible
"显示行号"
set number
" 隐藏滚动条"    
set guioptions-=r 
set guioptions-=L
set guioptions-=b
"隐藏顶部标签栏"
set showtabline=0
"设置字体"
set guifont=Monaco:h13         
syntax on   "开启语法高亮"
let g:solarized_termcolors=256  "solarized主题设置在终端下的设置"
set background=dark     "设置背景色"
set nowrap  "设置不折行"
set fileformat=unix "设置以unix的格式保存文件"
set cindent     "设置C样式的缩进格式"
set tabstop=4   "设置table长度"
set shiftwidth=4        "同上"
set showmatch   "显示匹配的括号"
set scrolloff=5     "距离顶部和底部5行"
set laststatus=2    "命令行为两行"
set fenc=utf-8      "文件编码"
set backspace=2
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase      "忽略大小写"
set incsearch
set hlsearch        "高亮搜索项"
set noexpandtab     "不允许扩展table"
set whichwrap+=<,>,h,l
set autoread
set cursorline      "突出显示当前行"
"set cursorcolumn        "突出显示当前列"
set noic

"set autoindent  "自动缩进"
set expandtab
"set smartindent
"按F5运行python脚本"
map <F5> :w<cr>:!python3 %<cr>

"python 代码补全设置
filetype plugin on
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 3

"文件头设置
"当新建.py文件时自动调用SetTitle 函数
autocmd BufNewFile *.py,*.sh, exec ":call SetTitle()"
let $author_name="LHQ"

func SetTitle()
 if &filetype == 'sh'
  call setline(1,"\#!/bin/bash")
  call append(line("."), "\# Author:".$author_name)
  call append(line(".")+1, "\# Create Time:".strftime("%c"))
  call append(line(".")+2, "")
 else
  call setline(1, "\#!/usr/bin/env python3")
  call append(line("."), "\# -*- coding: utf-8 -*-")
  call append(line(".")+1, "\"\"\"")
  call append(line(".")+2, "@create Time:".strftime("%Y-%m-%d"))
  call append(line(".")+3, "")
  call append(line(".")+4, "@author:".$author_name)
  call append(line(".")+5, "\"\"\"")
  call append(line(".")+6, "")
 endif
endfunc

