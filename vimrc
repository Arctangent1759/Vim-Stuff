set nocompatible
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Valloric/YouCompleteMe', {'build' : {'unix' : './install.sh  --clang-completer'}}
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'bling/vim-airline'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'ervandew/supertab'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'rhysd/vim-clang-format'
NeoBundle 'tpope/vim-afterimage'
NeoBundle 'vim-scripts/TeTrIs.vim'
NeoBundle 'Shougo/vimproc.vim', {'build': {'unix': 'make'}}
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'justinmk/vim-syntax-extra'
NeoBundle 'derekwyatt/vim-scala'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

let mapleader=";"
let localleader="'"
let g:gundo_right=1
let g:gundo_close_on_revert=1
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:airline#extensions#tabline#enabled = 1
let g:EclimCompletionMethod = 'omnifunc'
let g:vimshell_prompt = '> '
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_right_prompt = ''
let g:clang_format#command = 'clang-format-3.5'

syntax enable

set number
set backspace=indent,eol,start 
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
set linebreak
set wildmenu
set wildignore=*.o,*~,*.pyc
set ruler
set whichwrap+=<,>,h,l
set smartcase
set encoding=utf8
set autowrite
set autoread
set noswapfile
set backupdir=~/.vim/genfiles/backup
set undofile
set undodir=~/.vim/genfiles/undo
set viminfo+=n~/.vim/genfiles/viminfo
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
set fillchars+=vert:\ 

noremap j gj
noremap k gk
inoremap jk <esc>
nnoremap <leader>; ;
nnoremap <space> :
nnoremap <tab> >>
nnoremap <backspace> <<
nnoremap <leader>j <c-w>j 
nnoremap <leader>k <c-w>k
nnoremap <leader>h <c-w>h
nnoremap <leader>l <c-w>l
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>tn :tabnew<cr>
nnoremap gb <c-^>
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
noremap <leader>vs :VimShellTab<cr>

nnoremap <leader><tab> mzgg=G'z
autocmd FileType c,cpp,objc nnoremap <Leader>f :<C-u>ClangFormat<CR>


nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>b :TagbarToggle<cr>
nnoremap <leader>g :GundoToggle<cr>

nnoremap <leader>flip :set arabic!<cr>
nnoremap <leader>flip :set arabic!<cr>
"nnoremap <leader>r :silent !pdflatex % > /dev/null  && evince hw4.pdf &<cr>:redraw!<cr>
nnoremap <leader>r :silent execute("!pdflatex ".@%." 2>/dev/null 1>/dev/null && evince ".split(@%,"\\.")[0].".pdf 2>/dev/null 1>/dev/null &") \| :redraw!<cr>

highlight Pmenu ctermbg=darkgrey ctermfg=white
highlight PmenuSel ctermbg=darkblue ctermfg=green
highlight PmenuSbar ctermbg=cyan ctermfg=green
highlight PmenuThumb ctermbg=white ctermfg=red

colo molokai
