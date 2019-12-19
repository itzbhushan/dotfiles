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
Plug 'neoclide/coc.nvim', {'branch': 'release'} " for autocomplete
call plug#end()            " required

" set display color
set background=dark
colorscheme gruvbox
" set termguicolors

" Basic settings
set showmatch " cursor briefly jumps to the matching brace when you insert one
set incsearch " moves cursor to the matched string while typing search pattern.
nnoremap <leader><space> :nohlsearch<CR>    " turn off search highlight
set number
set rnu
set autoindent
set cursorline
set nocompatible
set nomodeline
set backspace=indent,eol,start
set wrap
set linebreak
set wildmenu
set wildmode=list:longest
set undofile "Maintain history between vim sessions
set undodir=~/dotfiles/undodir "Store per-file undo history in undodir
set updatetime=750 "vim waits for 750ms before triggering any plugin activity


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

let g:coc_global_extensions = [
\ 'coc-prettier', 'coc-json', 'coc-python', 'coc-yaml'
\]

set rtp+=/usr/local/opt/fzf
