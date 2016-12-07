set nocompatible	" Get rid of Vi compatibility
set t_Co=256		" Set 256 colors
syntax enable		" enable syntax highlighting
set number			" show line numbers
set shiftwidth=4	" indent/outdent 4 columns
set tabstop=4		" tab spacing
set softtabstop=4   " number of spaces in tab when editing
set expandtab		" Use spaces instead of tabs
set smarttab		" Use tabs at start of line, spaces elsewhere
set nowrap			" Don't wrap
set showmatch       " highlight matching [{()}]

set incsearch       " search as characters are typed
set hlsearch        " hilight search matches

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

set list
set listchars=tab:▸\ ,eol:¬,trail:☠
