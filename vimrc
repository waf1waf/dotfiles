set nocompatible	" Get rid of Vi compatibility
set t_Co=256		" Set 256 colors
syntax enable		" enable syntax highlighting
set number			" show line numbers
set shiftwidth=4	" indent/outdent 4 columns
set tabstop=4		" tab spacing
set softtabstop=4   " number of spaces in tab when editing
set noexpandtab		" Use spaces instead of tabs
set smarttab		" Use tabs at start of line, spaces elsewhere
set nowrap			" Don't wrap
set showmatch       " highlight matching [{()}]

set incsearch       " search as characters are typed
set hlsearch        " hilight search matches

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

set list
set history=200
set listchars=tab:→·,eol:¬,trail:·

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

highlight SpecialKey ctermfg=59
highlight NonText ctermfg=59
