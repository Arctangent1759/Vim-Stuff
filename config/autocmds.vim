"----------------------
"-----AutoCmds---------
"----------------------
autocmd FileType javascript nnoremap <buffer> <localleader>c I//
autocmd FileType python nnoremap <buffer> <localleader>c I#

"---------------------
"------Makeprg--------
"---------------------
au FileType c set makeprg=gcc\ %
au FileType cpp set makeprg=g++\ %
au FileType java set makeprg=javac\ %
au FileType python set makeprg=python\ %


