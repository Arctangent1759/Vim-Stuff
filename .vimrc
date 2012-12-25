call pathogen#infect()

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
set number
set nowrap
set autoindent
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
syntax enable
set background=dark
set incsearch
set showcmd
set autochdir
set history=700
filetype plugin on
filetype indent on
set so=5
set wildmenu
set wildignore=*.o,*~,*.pyc
set ruler
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set lazyredraw
set showmatch
set mat=2
set encoding=utf8

"----------------------
"--------Maps----------
"----------------------
noremap j gj
noremap k gk
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
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove
nnoremap <leader>th :tabp<cr>
nnoremap <leader>tl :tabn<cr>
nnoremap <leader>$ :tablast<cr>
nnoremap <leader>^ :tabfirst<cr>
nmap <c-j> mz:m+<cr>`z
nmap <c-k> mz:m-2<cr>`z
vmap <c-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <c-k> :m'<-2<cr>`>my`<mzgv`yo`z
nnoremap <leader>ss :setlocal spell!<cr>
nnoremap <leader>n :execute 'NERDTreeToggle ' . getcwd()<CR>


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
set ofu=syntaxcomplete#Complete
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
highlight Pmenu ctermbg=blue ctermfg=white
highlight PmenuSel ctermbg=blue ctermfg=red
highlight PmenuSbar ctermbg=cyan ctermfg=green
highlight PmenuThumb ctermbg=white ctermfg=red

"---------------------
"---Backup Settings---
"---------------------
set backup
set backupdir=~/.vim/backup
