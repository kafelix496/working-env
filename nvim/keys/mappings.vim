" vimwiki
nmap <Space> <Plug>VimwikiToggleListItem
vmap <Space> <Plug>VimwikiToggleListItem
nnoremap <Leader>mt :VimwikiTable<Space>

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" Fast vertical move
nnoremap <C-d> 30j
nnoremap <C-u> 30k

" console log
nnoremap <Leader>cl :silent put=['console.log(\"<C-r><C-w>\", <C-r><C-w>);']<CR>-2==+
xnoremap <Leader>cl y:<C-u>silent put=['console.log(\"<C-r>"\", <C-r>");']<CR>-2==+

" Replace
nnoremap <Leader>rp :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>
xnoremap <Leader>rp :%s///g<Left><Left>
xnoremap <Leader>rc :%s///gc<Left><Left><Left>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nmap <Leader>ap <Plug>(coc-codeaction)

" Organize import
nmap <Leader>si :call CocAction('runCommand', 'editor.action.organizeImport')<CR>

" Copy current file path
nnoremap <Leader>cp :let @+ = expand("%")<CR>

" Easy Save and Quit
nnoremap <leader>w :w!<CR>
nnoremap <leader>q <C-w>o:q!<CR>

" Easy tab move
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

nnoremap <leader><CR> :noh<CR>
