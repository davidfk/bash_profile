""" Plug
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Tags
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'

" Git
Plug 'tpope/vim-fugitive'

" Lint / Fmt
Plug 'w0rp/ale'

" Tmux
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

filetype plugin indent on

" Leader
let mapleader = ' '
let maplocalleader = ' '

""" Vim options
syntax on                    " syntax highlighting

set nocompatible             " no backwards compatability with vi
set modelines=0              " prevents security exploits
set incsearch                " incremental search
set number                   " absolute line numbers
set ruler                    " character count
set hlsearch                 " highlight search results
set fileformat=unix          " unix newlines
set tabstop=2                " # cols a tab counts for
set shiftwidth=2             " # cols text indented with (<< and >>)
set softtabstop=2            " # cols vim uses when hit tab in insert mode
set expandtab                " insert spaces when hit tab in insert mode
set smartindent              " smart indent assuming text is c-program
set autoindent               " use indent from last line (smartindent better with this on)
set ignorecase               " case matching
set smartcase                " case matching
set wrap                     " wrap text
set encoding=utf-8

" Navigation
nnoremap <tab> <c-w>w
nnoremap <S-tab> <c-w>W

" Tagbar
noremap <F12> :TagbarToggle<cr>

" NERDTree
let g:NERDTreeShowHidden=1     " shows hidden files
noremap <F10> :NERDTreeToggle<cr>

" ALE
let g:ale_fix_on_save=1

" Fzf
let g:fzf_layout = { 'up': '~40%' }
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <leader>fw :Ag <C-R><C-W><CR>
nnoremap <silent> <leader>ag :Ag <C-R>
nnoremap <silent> <leader>bf :Buffers<CR>
nnoremap <silent> <leader>tg :Tags<CR>

