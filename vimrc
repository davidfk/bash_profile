"""filetype off
call pathogen#infect()

""" File formatting
"""filetype plugin indent on

set nocompatible    " no backwards compatability with vi
set modelines=0     " prevents security exploits

""" Color schemes
highlight BadWhitespace ctermbg=red guibg=red

""" Control options
set smartindent     " auto indentation
set incsearch       " incremental search
set tabstop=4       " default to 4
set shiftwidth=4    " default to 4
set softtabstop=4   " number of columns for TAB
set expandtab       " expand tabs to spaces

syntax on                   " syntax highlighting
set number                  " absolute line numbers
set ruler                   " character count
set hlsearch                " highlight search results
set showtabline=4           " always show tabline
set fileformat=unix         " unix newlines
" set colorcolumn=80        " highlight col 80
match BadWhitespace /\s\+$/ " highlight trailing whitespace
match BadWhitespace /\t/    " highlight tabs

" highlights col 80
" highlight ColorColumn ctermbg=7
" match ErrorMsg '\%>80v.\+'

""" For NERDTree
let NERDTreeShowHidden=1    " shows hidden files

""" Custom commands
command Nt NERDTreeToggle
command Fw StripWhitespace

""" Testing nav
let mapleader = ","
map <C-j> <C-W>h
map <C-k> <C-W>l
map <leader>r :NERDTreeFind<cr>

""" Vim Info
" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

""" Restore cursor
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

