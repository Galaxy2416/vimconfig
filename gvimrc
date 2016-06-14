"autocmd FileType python set ōmnifunc=pythoncomplete#Complete
"autocmd FileType javascrīpt set ōmnifunc=javascrīptcomplete#CompleteJS
"autocmd FileType html set ōmnifunc=htmlcomplete#CompleteTags
"autocmd FileType php set ōmnifunc=phpcomplete#CompletePHP
"autocmd FileType c set ōmnifunc=ccomplete#Complete
filetype plugin on
"set tags += 

if has('win32')
    au GUIEnter * simalt ~x
else
    au GUIEnter * call MaximizeWindow()
endif
 
function! MaximizeWindow()
    silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction

" set guifont=Eunjin\ 11
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
\set guioptions-=T <Bar>
\set guioptions-=m <bar>
\else <Bar>
\set guioptions+=T <Bar>
\set guioptions+=m <Bar>
\endif<CR>
