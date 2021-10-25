if exists('g:vscode')
  augroup qs_colors
    autocmd!
    autocmd ColorScheme * highlight QuickScopePrimary guifg='#ffff00' gui=underline ctermfg=155 cterm=underline
    autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
  augroup END
else
  highlight QuickScopePrimary guifg='afff5f' gui=underline ctermfg=155 cterm=underline
  highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
endif

