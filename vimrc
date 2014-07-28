set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on

let mapleader=";"
let localleader="'"
let g:gundo_right=1
let g:gundo_close_on_revert=1
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'

syntax enable

set number
set backspace=indent,eol,start 
set nowrap
set cindent
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set background=dark
set incsearch
set showcmd
set history=700
set so=5
set wildmenu
set wildignore=*.o,*~,*.pyc
set ruler
set whichwrap+=<,>,h,l
set smartcase
set encoding=utf8
set autowrite
set noswapfile
set backupdir=~/.vim/gen/backup
set undofile
set undodir=~/.vim/gen/undo
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

noremap j gj
noremap k gk
inoremap jk <esc>
nnoremap <space> :
nnoremap <tab> >>
nnoremap <backspace> <<
nnoremap <leader>j <c-w>j 
nnoremap <leader>k <c-w>k
nnoremap <leader>h <c-w>h
nnoremap <leader>l <c-w>l
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>tn :tabnew<cr>
nnoremap B ^
vnoremap B ^
onoremap B ^
nnoremap E $
vnoremap E $
onoremap E $
nnoremap <leader>a <c-a>
nnoremap <c-c> "+yy
nnoremap <c-v> "+p
vnoremap <c-c> "+y
vnoremap <c-v> "+p

nnoremap <leader>f mzgg=G'z


nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>b :TagbarToggle<cr>
nnoremap <leader>g :GundoToggle<cr>

highlight Pmenu ctermbg=darkgrey ctermfg=white
highlight PmenuSel ctermbg=darkblue ctermfg=green
highlight PmenuSbar ctermbg=cyan ctermfg=green
highlight PmenuThumb ctermbg=white ctermfg=red
