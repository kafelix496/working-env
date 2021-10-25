" Better Navigation
nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>

" Better nav for omnicomplete
inoremap <expr> <C-j> ("\<C-n>")
inoremap <expr> <C-k> ("\<C-p>")

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Easy Save and Quit
nnoremap <leader>w :call VSCodeNotify('workbench.action.files.save')<CR>
nnoremap <leader>q :call VSCodeNotify('workbench.action.closeActiveEditor')<CR>

" Easy tab move
nnoremap <leader>1 :call VSCodeNotify('workbench.action.openEditorAtIndex1')<CR>
nnoremap <leader>2 :call VSCodeNotify('workbench.action.openEditorAtIndex2')<CR>
nnoremap <leader>3 :call VSCodeNotify('workbench.action.openEditorAtIndex3')<CR>
nnoremap <leader>4 :call VSCodeNotify('workbench.action.openEditorAtIndex4')<CR>
nnoremap <leader>5 :call VSCodeNotify('workbench.action.openEditorAtIndex5')<CR>
nnoremap <leader>6 :call VSCodeNotify('workbench.action.openEditorAtIndex6')<CR>
nnoremap <leader>6 :call VSCodeNotify('workbench.action.openEditorAtIndex7')<CR>
nnoremap <leader>8 :call VSCodeNotify('workbench.action.openEditorAtIndex8')<CR>
nnoremap <leader>9 :call VSCodeNotify('workbench.action.openEditorAtIndex9')<CR>

xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine

nnoremap <leader><CR> :noh<CR>

