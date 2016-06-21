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
" Slight red background for things surpassing line 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" tex 
autocmd BufNewFile,BufRead *.cls set ft=tex
autocmd FileType tex call SetTexOptions()
function SetTexOptions()
    set shiftwidth=2
    set tabstop=2
    set expandtab
    set shiftround
    set linebreak
endfunction

" python
autocmd FileType py call SetPyOptions()
function SetPyOptions()
    set shiftwidth=4
    set tabstop=4
    set expandtab
endfunction
