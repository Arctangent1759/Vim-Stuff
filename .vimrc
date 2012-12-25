"----------------------
"---------Vars---------
"----------------------
let mapleader=";"
let localleader="'"

"----------------------
"-------Options--------
"----------------------
set nocp
set backspace=indent,eol,start 
set background=dark
set number
set nowrap
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
syntax on
set incsearch
set showcmd
set autochdir
set history=700

"----------------------
"--------Maps----------
"----------------------
"Convenience
inoremap jk <esc>
cnoremap jk <esc>
vnoremap <leader>jk <esc> 
nnoremap <space> :
nnoremap <cr> i<cr><esc>
nnoremap <tab> >>
nnoremap <backspace> <<
nnoremap <leader><leader><leader><tab> :%s/    /\t/g
"Switch between splits
nnoremap <leader>j <c-w>j 
nnoremap <leader>k <c-w>k
nnoremap <leader>h <c-w>h
nnoremap <leader>l <c-w>l
"Resize splits
nnoremap <leader>+ :res +10<cr>
nnoremap <leader>- :res -10<cr>
"Edit .vimrc
nnoremap <leader>ev :sp $MYVIMRC<cr><c-w>j
nnoremap <leader>sv :source $MYVIMRC<cr>
"For teh lolz
nnoremap <leader><leader><leader>cat :echom '(>^.^<) -- Meow!'<cr>
nnoremap <leader><leader><leader>kirby :echom "(>'')>"<cr>

"----------------------
"---Abbreviations------
"----------------------
iabbrev hte the
iabbrev teh the
iabbrev adn and

"----------------------
"-----AutoCmds---------
"----------------------
autocmd FileType javascript nnoremap <buffer> <localleader>c I//
autocmd FileType python nnoremap <buffer> <localleader>c I#

"---------------------
"----AutoComplete-----
"---------------------
set completeopt=longest,menuone
filetype plugin on
set ofu=syntaxcomplete#Complete

"---------------------
"---Backup Settings---
"---------------------
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
