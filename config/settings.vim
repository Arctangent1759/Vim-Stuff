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
set shiftwidth=2

""""""""""""""""""""
"Remove after Proj3"
set expandtab
"------------------"
""""""""""""""""""""

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

"---------------------
"---Backup Settings---
"---------------------
set backup
set backupdir=~/.vim/backup

