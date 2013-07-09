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
"Tabs (The navigationy kind)
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
noremap <leader><leAder><leader>e :set wrap!<cr>:setlocal spell!<cr>:set linebreak!<cr>
nnoremap B ^
nnoremap E $
nnoremap <leader>a <c-a>
nnoremap <leader>f F
"Clipboard
nnoremap <c-c> "+yy
nnoremap <c-v> "+p
vnoremap <c-c> "+y
vnoremap <c-v> "+p

"Music Player
nnoremap <leader><leader><leader><leader>m :execute "vert sview ~/.vim/playlist.txt \| vert resize 30"<cr><c-w>r:call PlayFile()<cr>:vert resize 0<cr><c-w>h

"Sublime-like substitution
nnoremap <leader>sub viw"zy:%s/\<<c-r>"\>//g<left><left>

"Gotta go fast
nnoremap J }
nnoremap K {

"DO ALL THE TABS
nnoremap <leader>tab mzggvG$='z

"---------------------
"------Run Maps-------
"---------------------
nnoremap <leader>r :execute "!pdflatex " . @% . "; evince " . join(split(@%,"\\.tex")) . ".pdf &"<cr>
"nnoremap <leader><f5> :execute "!javac %;java " . join(split(@%,".java"))<cr>
nnoremap <leader><f5> :execute "!gcc %; ./a.out;"<cr>
