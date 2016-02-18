execute pathogen#infect()
syntax enable
set background=dark
colorscheme solarized
filetype plugin on
filetype indent on
set mouse=a         " enable mouse selection

" Indentation
set autoindent      " copy indent from current line when starting newline
set expandtab       " spaces as tabs
set tabstop=4       " 1 tab = 4 spaces
set shiftwidth=4    " number of spaces to use for auto indent

" Display options
set ruler           " display ruler 
set number          " show line and column number

" call pyFlake8 on each write
autocmd BufWritePost *.py call Flake8()
autocmd FileType python setlocal completeopt-=preview
