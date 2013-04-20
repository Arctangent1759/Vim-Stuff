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
set autowrite
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
set nobackup

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
nnoremap <leader>mt :tabmove
nnoremap <leader><leader>h :tabp<cr>
nnoremap <leader>, :tabp<cr>
nnoremap <leader><leader>l :tabn<cr>
nnoremap <leader>. :tabn<cr>
nmap <c-j> mz:m+<cr>`z
nmap <c-k> mz:m-2<cr>`z
vmap <c-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <c-k> :m'<-2<cr>`>my`<mzgv`yo`z
nnoremap <leader>ss :setlocal spell!<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>b :TagbarToggle<cr>
nmap <leader>p <c-p>
nnoremap <f5> :make<cr>
noremap <leader><leader><leader>e :set wrap!<cr>:setlocal spell!<cr>:set linebreak!<cr>
nnoremap B ^
nnoremap E $
nnoremap <leader>a <c-a>

"----------------------
"-----AutoCmds---------
"----------------------
autocmd FileType javascript nnoremap <buffer> <localleader>c I//
autocmd FileType python nnoremap <buffer> <localleader>c I#

"---------------------
"----AutoComplete-----
"---------------------
set complete=.,b,u,]
set completeopt=longest,menuone,preview
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

"---------------------
"------Makeprg--------
"---------------------
au FileType c set makeprg=gcc\ %
au FileType cpp set makeprg=g++\ %
au FileType java set makeprg=javac\ %
au FileType python set makeprg=python\ %

"---------------------
"------Run Maps-------
"---------------------
nnoremap <leader>r :execute "!pdflatex " . @% . "; evince " . join(split(@%,"\\.tex")) . ".pdf &"<cr>
nnoremap <leader><f5> :execute "!javac %;java " . join(split(@%,".java"))<cr>
