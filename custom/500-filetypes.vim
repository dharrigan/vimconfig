"
" Filetypes
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Applicable To All
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup return_to_last_edit_position_augroup
  autocmd!
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
augroup END

augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline guisp=#cdcdcd guibg=NONE
    autocmd VimEnter * hi illuminatedCurWord cterm=underline gui=underline guisp=#767676 guibg=NONE
augroup END

augroup generic_augroup
  autocmd!
                                      " If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
  "autocmd BufEnter *                  if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
  autocmd BufEnter *                  call AutoRestoreWinView()
  autocmd BufLeave *                  call AutoSaveWinView()
  autocmd BufRead *                   silent! set fileformat=unix
  autocmd FocusGained,BufEnter *      if mode() != 'c' | checktime | endif
  autocmd WinEnter    jar:file://*    ParinferOff
  autocmd BufEnter    jar:file://*    ParinferOff
  autocmd BufReadCmd  jar:file://*    call LoadClojureContent(expand("<afile>"))
  autocmd BufLeave    jar:file://*    ParinferOn
  autocmd WinLeave    jar:file://*    ParinferOn
  autocmd WinEnter    zipfile://*     ParinferOff
  autocmd BufEnter    zipfile://*     ParinferOff
  autocmd BufLeave    zipfile://*     ParinferOn
  autocmd WinLeave    zipfile://*     ParinferOn
  autocmd CursorHold  *               silent call CocActionAsync('highlight')
  autocmd BufWinEnter *               silent! :%foldopen!
  autocmd BufWinLeave *               call clearmatches()
  autocmd InsertLeave,CompleteDone *  if pumvisible() == 0 | silent! pclose | endif
augroup END

augroup filetypes_augroup
  autocmd!
  autocmd FileType clap_input         inoremap <silent> <buffer> <Esc> <Esc>:call clap#handler#exit()<CR>
  autocmd FileType fzf                set laststatus=0 noshowmode noruler | au BufLeave <buffer> set laststatus=2 showmode ruler
  autocmd FileType go                 setlocal sw=4 ts=4 sts=4 noexpandtab
  autocmd FileType json               setlocal conceallevel=0 foldmethod=syntax foldlevel=999
  autocmd FileType mail               call lexical#init()
  autocmd FileType mail               setlocal comments=nb:> tw=78 spell
  autocmd FileType make               setlocal nolist noexpandtab sw=4 ts=4 sts=4
  autocmd FileType sql                setlocal formatprg=pg_format\ -f2\ -u2\ -
  autocmd FileType text               setlocal tw=78 spell
  autocmd FileType text               call lexical#init()
  autocmd FileType yaml               setlocal sw=2 ts=2 sts=2
augroup END

augroup user_augroup
  autocmd!
  autocmd User CocJumpPlaceholder     call CocActionAsync('showSignatureHelp')
augroup END

augroup numbertoggle_augroup
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave *    set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter *      set norelativenumber
augroup END

augroup autopairs_augroup
  " disable auto-pairs for lisp -- it interferes with parinfer
  autocmd Filetype lisp,scheme,clojure,lfe let b:AutoPairs = {}
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Asciidoc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup asciidoc_augroup
  autocmd!
  autocmd BufEnter *.adoc     setlocal spell foldlevel=999 tw=78
  autocmd BufEnter *.adoc     call lexical#init()
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Clojure
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup clojure_augroup
  autocmd!
  autocmd Filetype clojure              set tagfunc=CocTagFunc
  autocmd BufNewFile,BufRead *.edn      setf clojure
  autocmd BufEnter conjure-log-*.cljc   setf clojure
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Direvn
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup direnv_augroup
  autocmd!
  autocmd BufNewFile,BufRead .envrc             setf direnv
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Crontab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup crontab_augroup
  autocmd!
  autocmd BufNewFile,BufRead /tmp/crontab*      setf crontab
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup git_augroup
  autocmd!
  autocmd BufNewFile,BufRead .git/config        setlocal ft=gitconfig nolist ts=4 sw=4
  autocmd BufNewFile,BufRead .gitconfig*        setlocal ft=gitconfig nolist ts=4 sw=4
  autocmd VimEnter COMMIT_EDITMSG               call OpenCommitMessageDiff()
  autocmd VimEnter COMMIT_EDITMSG               call lexical#init()
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HTML
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup html_augroup
  autocmd!
  autocmd BufNewFile,BufRead *.html             setlocal smartindent tw=256
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ini
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup ini_augroup
  autocmd!
  autocmd BufNewFile,BufRead *.ini              setf conf
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => JSON
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup json_augroup
  autocmd!
  autocmd BufNewFile,BufRead *.json             set ft=json ts=2 sw=2
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Justfile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup justfile_augroup
  autocmd!
  autocmd BufNewFile,BufRead .justfile          set ft=just tw=256
  autocmd BufNewFile,BufRead Justfile           set ft=just tw=256
  autocmd BufNewFile,BufRead justfile           set ft=just tw=256
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup markdown_augroup
  autocmd!
  autocmd BufNewFile,BufRead *.md               setlocal spell foldlevel=999 tw=78
  autocmd BufNewFile,BufRead *.md               call lexical#init()
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => quickfix
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Press q to close quickfix buffer.
augroup quickfix_augroup
  autocmd!
  autocmd BufReadPost quickfix                  nnoremap <buffer> q :q!<CR>
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => templates
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup template_augroup
  autocmd!
  autocmd BufNewFile,BufRead *.template         set ft=text nospell tw=78
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => terraform
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup terraform_augroup
  autocmd!
  autocmd BufNewFile,BufRead *.tf               set tw=78
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => XML
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup xml_augroup
  autocmd!
  autocmd BufNewFile,BufRead *.xml              setlocal ft=xml ts=2 sw=2
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ZSH
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup zsh_augroup
  autocmd!
  autocmd BufNewFile,BufRead *.zsh              setf zsh
  autocmd BufNewFile,BufRead .zshlocal          setf zsh
augroup END

" vim: set syntax=vim:
