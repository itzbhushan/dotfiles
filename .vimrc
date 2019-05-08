" Use plug package manager
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'rking/ag.vim'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator' "navigate seamlessly between vim and tmux
Plug 'ambv/black'  "format python code
" All of your Plugins must be added before the following line
call plug#end()            " required

" set display color
set background=dark
colorscheme gruvbox
set termguicolors

" Basic settings
set hlsearch
set showmatch
set incsearch
nnoremap <leader><space> :nohlsearch<CR>    " turn off search highlight
set number
set rnu
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set cursorline
set nocompatible
set modelines=0
set backspace=indent,eol,start
set wrap
set linebreak
set wildmenu
set wildmode=list:longest
set undofile "Maintain history between vim sessions
set undodir=~/.vim/undodir "Store per-file undo history in undodir


" set key bindings
inoremap jk <ESC>
inoremap zz <ESC>
" remap navigation to ctrl+<jklh>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" more natural splitting
set splitbelow
set splitright
let mapleader=","

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

set diffopt+=vertical " set vim-fugitive Gdiff to vertical

" set 2 space indent for yaml filetype
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set rtp+=/usr/local/opt/fzf
