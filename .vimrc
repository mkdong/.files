
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

"--------- add for Vundle.vim -----------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" tools
Plugin 'L9'

" browser enhencement
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/vimproc.vim'

" UI enhencement
Plugin 'bling/vim-airline'
Plugin 'drmikehenry/vim-fontsize'

" language support
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'

"+coding enhencement
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neocomplete.vim'
"|--git
Plugin 'tpope/vim-fugitive'
" colorscheme
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'

"
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-scripts/sjump.vim'
Plugin 'PProvost/vim-markdown-jekyll'
Plugin 'vivien/vim-linux-coding-style'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

" format
set nu
set ts=4
set sw=4
set sts=4
"set noexpandtab
set display=lastline
set laststatus=2

" encoding
set encoding=utf-8
setglobal fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,latin1,gb18030,gbk,gb2312,cp936,iso8859
set termencoding=utf-8
" indent
set wrap
set autoindent
set smartindent
set smarttab
set cindent
set linebreak
set shiftround
set expandtab
"set showbreak=>\ \ \

" search
set hlsearch
set incsearch
set ignorecase
set showcmd

" backups
set nobackup
set nowritebackup

set ruler
set cursorline

set fileformat=unix
set fileformats=unix,dos,mac

set mouse=a

syntax enable
set foldmethod=syntax
"set nofoldenable
"set foldlevel=1
set foldlevelstart=20

colorscheme molokai
set cc=80

set list
set listchars=tab:▸\ ,eol:¬

" Gif config
"
" Require tpope/vim-repeat to enable dot repeat support
" Jump to anywhere with only `s{char}{target}`
" `s<CR>` repeat last find motion.
nmap <space> <Plug>(easymotion-s)
" Bidirectional & within line 't' motion
"omap t <Plug>(easymotion-bd-tl)
" Use uppercase target labels and type as a lower case
let g:EasyMotion_use_upper = 1
 " type `l` and match `l`&`L`
 let g:EasyMotion_smartcase = 1
 " Smartsign (type `3` and match `3`&`#`)
 let g:EasyMotion_use_smartsign_us = 1

let g:syntastic_cpp_include_dirs = ['~/devtools/fltk-1.3.3/','~/devtools/']
let g:syntastic_cpp_check_header = 1
