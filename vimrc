set nocompatible    " Get rid of Vi compatibility
set t_Co=256        " Set 256 colors
syntax enable       " enable syntax highlighting
set number          " show line numbers
set shiftwidth=4    " indent/outdent 4 columns
set tabstop=4       " tab spacing
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " Use spaces instead of tabs
set smarttab        " Use tabs at start of line, spaces elsewhere
set nowrap          " Don't wrap
set showmatch       " highlight matching [{()}]

set incsearch       " search as characters are typed
set hlsearch        " hilight search matches

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

set history=200
" set list
" set listchars=tab:→·,eol:¬,trail:·
" set listchars=tab:.·,eol:$,trail:.

highlight SpecialKey ctermfg=59
highlight NonText ctermfg=59

let mapleader = "\<Space>"

nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>

" Use jk or kj to be escape
imap jk <esc>
imap kj <esc>

" Handle wrapped lines better
nmap k gk
nmap j gj

" Ctrl-S to write
map <C-s> <esc>:w<cr>
imap <C-s> <esc>:w<cr>

set incsearch

set undofile               " Allow persistent undo
set undodir=~/.vim/undodir " Place to store undofiles

" Use w!! when can't write because you need to be root
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

let g:netrw_liststyle = 3

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Create a place for swap files
mkdir -p $HOME/.vim/swp
set directory=$HOME/.vim/swp/
