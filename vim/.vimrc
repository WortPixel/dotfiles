execute pathogen#infect()
syntax on
filetype plugin indent on

" spaces as tabs
set expandtab
" 1 tab = 4 spaces
set tabstop=4
" number of spaces to use for auto indent
set shiftwidth=4
" copy indent from current line when starting newline
set autoindent
" show line and column number
set ruler
set number

" call pyFlake8 on each write
autocmd BufWritePost *.py call Flake8()
autocmd FileType python setlocal completeopt-=preview
