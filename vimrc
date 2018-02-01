"""filetype off
call pathogen#infect()

""" File type detection
filetype plugin indent on

set nocompatible    " no backwards compatability with vi
set modelines=0     " prevents security exploits

""" Color schemes
highlight BadWhitespace ctermbg=red guibg=red

""" Control options
syntax on                    " syntax highlighting
set incsearch                " incremental search
set number                   " absolute line numbers
set ruler                    " character count
set hlsearch                 " highlight search results
set fileformat=unix          " unix newlines
match BadWhitespace /\s\+$/  " highlight trailing whitespace

""" Tab options (defaults)
set tabstop=2                " # cols a tab counts for
set shiftwidth=2             " # cols text indented with (<< and >>)
set softtabstop=2            " # cols vim uses when hit tab in insert mode
set expandtab                " insert spaces when hit tab in insert mode
set smartindent              " smart indent assuming text is c-program
set autoindent               " use indent from last line (smartindent better with this on)

""" For NERDTree
let NERDTreeShowHidden=1     " shows hidden files

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

