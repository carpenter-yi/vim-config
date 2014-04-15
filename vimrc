" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Carpenter Yi <carpenter.yi@gmail.com>
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Vundle setting
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" Linux runtime path
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
" Windows runtime path
set rtp+=~/vimfiles/bundle/vundle/
let path='~/vimfiles/bundle'
call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" colorscheme
Plugin 'tomasr/molokai'

Plugin 'scrooloose/nerdtree'
nnoremap <silent><F3> :NERDTreeToggle<CR>
"Open a NERDTree automatically when vim starts up if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif
"Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

filetype plugin indent on     " required


" General setting
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Make backspace working like 'backspace' in edit mode.
set backspace=indent,eol,start

" Don't pollute any folders.
set nobackup
set nowritebackup
set noswapfile

" Reload the file automatic when the file have been modified by other program.
set autoread
set autowrite

" Max history item number.
set history=1024

" Always use utf-8 as character encoding.
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Fix gui menu garbled.
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Fix console message garbled.
language messages en_US.utf-8

" Show the line and column number of the cursor position.
set ruler

" Show (partial) command in the last line of the screen.
set showcmd

" Omni command will show a menu.
set wildmenu

" Long line wrap settings.
set nowrap

" Don't hightlight current line.
set nocul

" Show line number.
set nu

" Completion window options.
set completeopt=menuone,menu,longest

" Hide scrollbar.
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=b
set guioptions-=B

" Hide toolbar.
set guioptions-=t
set guioptions-=T

" Enable mouse in all modes.
if has('mouse')
    set mouse=a
endif

" Tab settings.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Cindent
set cindent
set cino=:0,l1,g0,N-s,i2s,+2s,u0

" Keep cursor 5 lines away from the top or the bottom .
set scrolloff=5

" Incremental search.
set incsearch

" Hightlight searching keyword.
set hlsearch

" Don't ignore case when search and completion.
set noignorecase
set infercase

" Enable syntax highlighting.
syntax enable

" Colors.
set t_Co=256
colorscheme molokai

" Font family and size.
set guifont=Consolas:h10:cANSI

" Style of the command 'set list'.
set lcs=tab:@@,trail:^,eol:$

" Cursor blink.
set guicursor=a:blinkwait700-blinkon800-blinkoff500

" Move among windows hotkey.
nnoremap <silent><C-h> <C-W>h
nnoremap <silent><C-l> <C-W>l
nnoremap <silent><C-j> <C-W>j
nnoremap <silent><C-k> <C-W>k

