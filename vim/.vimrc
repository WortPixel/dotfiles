execute pathogen#infect()
syntax enable
"set background=light
"colorscheme solarized
filetype plugin on
filetype indent on

" Indentation
set autoindent      " copy indent from current line when starting newline

" Display options
set ruler           " display ruler 
set number          " show line and column number

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" tex 
autocmd BufNewFile,BufRead *.cls set ft=tex
autocmd FileType tex set shiftwidth=2 | set tabstop=2 | set expandtab | set softtabstop=2 | set shiftround | set linebreak

" python
autocmd FileType py set shiftwidth=4 | set tabstop=4 | set expandtab
