"
" Colours and Schemes
"

highlight CursorLine cterm=NONE ctermbg=white
highlight statusline ctermfg=lightred ctermbg=blue
highlight clear search
highlight search term=reverse cterm=reverse
highlight pmenu ctermfg=white ctermbg=black
highlight pmenusel ctermfg=white ctermbg=blue
highlight Normal ctermbg=black

" Setting the colourscheme must come after setting the highlights, to allow for highlighting to work correctly.

colorscheme palenight

call palenight#set_highlight('CocSem_type', {'fg': palenight#GetColors()['dark_red']})
call palenight#set_highlight('CocSem_variable', {'fg': palenight#GetColors()['yellow']})

" vim: set syntax=vim:
