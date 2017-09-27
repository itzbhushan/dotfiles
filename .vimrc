" Using vundle package manager
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rking/ag.vim'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/syntastic'
Plugin 'sheerun/vim-polyglot'
Plugin 'morhetz/gruvbox'
Plugin 'morhetz/gruvbox-contrib'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" set display color
syntax enable
set background=dark
colorscheme gruvbox

" Basic settings
filetype plugin indent on
set hlsearch
set showmatch
set incsearch
set number
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set nocompatible
set modelines=0
set backspace=indent,eol,start
set wrap
set linebreak
set wildmenu
set wildmode=list:longest
set rnu


" set key bindings
inoremap jk <ESC>
inoremap zz <ESC>
let mapleader = "\<Space>"

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" set vim-fugitive Gdiff to vertical
set diffopt+=vertical

" set 2 space indent for yaml filetype
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
