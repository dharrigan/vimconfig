"
" Filetypes
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Applicable To All
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup return_to_last_edit_position_aug
  autocmd!
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
augroup END

augroup generic_aug
  autocmd!
  autocmd BufEnter *                  call AutoRestoreWinView()
  autocmd BufLeave *                  call AutoSaveWinView()
  autocmd BufRead *                   silent! set fileformat=unix
  autocmd FocusGained,BufEnter *      :checktime
  autocmd WinEnter    jar:file://*    ParinferOff
  autocmd BufEnter    jar:file://*    ParinferOff
  autocmd BufReadCmd  jar:file://*    call LoadClojureContent(expand("<afile>"))
  autocmd BufLeave    jar:file://*    ParinferOn
  autocmd WinLeave    jar:file://*    ParinferOn
  autocmd BufWinEnter *               silent! :%foldopen!
  autocmd BufWinLeave *               call clearmatches()
  autocmd CursorHold *                silent call CocActionAsync('highlight')
  autocmd InsertLeave,CompleteDone *  if pumvisible() == 0 | silent! pclose | endif
augroup END

augroup filetypes_aug
  autocmd!
  autocmd FileType clap_input         inoremap <silent> <buffer> <Esc> <Esc>:call clap#handler#exit()<CR>
  autocmd FileType fzf                set laststatus=0 noshowmode noruler | au BufLeave <buffer> set laststatus=2 showmode ruler
  autocmd FileType go                 setlocal sw=4 ts=4 sts=4 noexpandtab
  autocmd FileType json               setlocal conceallevel=0 foldmethod=syntax foldlevel=999
  autocmd FileType mail               call lexical#init()
  autocmd FileType mail               setlocal comments=nb:> tw=70 spell
  autocmd FileType make               setlocal nolist noexpandtab sw=4 ts=4 sts=4
  autocmd FileType sql                setlocal formatprg=pg_format\ -f2\ -u2\ -
  autocmd FileType text               setlocal tw=70 spell
  autocmd FileType text               call lexical#init()
  autocmd FileType yaml               setlocal sw=2 ts=2 sts=2
augroup END

augroup user_aug
  autocmd!
  autocmd User CocJumpPlaceholder     call CocActionAsync('showSignatureHelp')
augroup END

augroup numbertoggle_aug
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave *    set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter *      set norelativenumber
augroup END

augroup autopairs_aug
  " disable auto-pairs for lisp -- it interferes with parinfer
  autocmd Filetype lisp,scheme,clojure,lfe let b:AutoPairs = {}
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Asciidoc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup asciidoc_aug
  autocmd!
  autocmd BufEnter *.adoc     setlocal spell foldlevel=999 tw=70
  autocmd BufEnter *.adoc     call lexical#init()
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Clojure
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup clojure_aug
  autocmd!
  " When editing a Clojure(Script) buffer, make C-] smarter about jumping to
  " tags when the symbol is namespace-qualified.
  autocmd FileType clojure              nnoremap <buffer> <C-]> :exe ":tag ".SanitizeTag(expand("<cword>"))<cr>
  autocmd BufNewFile,BufRead *.edn      setf clojure
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Crontab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup direnv_aug
  autocmd!
  autocmd BufNewFile,BufRead .envrc             setf direnv
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Crontab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup crontab_aug
  autocmd!
  autocmd BufNewFile,BufRead /tmp/crontab*      setf crontab
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup git_aug
  autocmd!
  autocmd BufNewFile,BufRead .git/config        setlocal ft=gitconfig nolist ts=4 sw=4
  autocmd BufNewFile,BufRead .gitconfig*        setlocal ft=gitconfig nolist ts=4 sw=4
  autocmd VimEnter COMMIT_EDITMSG               call OpenCommitMessageDiff()
  autocmd VimEnter COMMIT_EDITMSG               call lexical#init()
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HTML
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup html_aug
  autocmd!
  autocmd BufNewFile,BufRead *.html             setlocal smartindent
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ini
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup ini_aug
  autocmd!
  autocmd BufNewFile,BufRead *.ini              setf conf
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => JSON
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup json_aug
  autocmd!
  autocmd BufNewFile,BufRead *.json             set ft=json ts=2 sw=2
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup markdown_aug
  autocmd!
  autocmd BufNewFile,BufRead *.md               setlocal spell foldlevel=999 tw=128
  autocmd BufNewFile,BufRead *.md               call lexical#init()
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => quickfix
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Press q to close quickfix buffer.
augroup quickfix_aug
  autocmd!
  autocmd BufReadPost quickfix                  nnoremap <buffer> q :q!<CR>
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => XML
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup xml_aug
  autocmd!
  autocmd BufNewFile,BufRead *.xml              setlocal ft=xml ts=2 sw=2
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ZSH
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup zsh_aug
  autocmd!
  autocmd BufNewFile,BufRead *.zsh              setf zsh
  autocmd BufNewFile,BufRead .zshlocal          setf zsh
augroup END

" vim: set syntax=vim:
