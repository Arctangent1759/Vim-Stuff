"---------------------
"----AutoComplete-----
"---------------------
if has("autocmd")
  autocmd Filetype java setlocal omnifunc=javacomplete#Complete
endif 
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
set completeopt-=preview
let g:SuperTabDefaultCompletionType = "\<c-x>\<c-o>" 

