"Desplazamiento:
 nnoremap j h
 nnoremap k j
 nnoremap l k
 nnoremap ñ l
 nnoremap J H
 nnoremap K J
 nnoremap L K
 nnoremap Ñ L

"Teclado Visual:
 vnoremap j h
 vnoremap k j
 vnoremap l k
 vnoremap ñ l
 
"Atajos:
 nmap <silent> <Leader>w :wq<CR>
 nmap <silent> <Leader>q :q!<CR>

 vmap <C-c> "+y

"Salto De Linea:
 nnoremap gk gj
 nnoremap gl gk

"Easymotion:
 nmap <Leader>g <Plug>(easymotion-s2)

"NERDTree:
 nmap <Leader>t :NERDTreeFind<CR>

"Vim Temux Navigator:
 nnoremap <silent> <Leader>j :TmuxNavigateLeft<cr>
 nnoremap <silent> <Leader>k :TmuxNavigateDown<cr>
 nnoremap <silent> <Leader>l :TmuxNavigateUp<cr>
 nnoremap <silent> <Leader>ñ :TmuxNavigateRight<cr>
 nnoremap <silent> <Leader><Space> :TmuxNavigatePrevious<cr>
