"
" Mappings
"

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> :bn<CR>
map <C-H> :bp<CR>
noremap <F7> :cprevious<CR>
noremap <F8> :cnext<CR>
noremap <F9> :cclose<CR>
map Y y$
map Q gq

" I don't record things *ever*
map q <Nop>

map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
" note below, g* not g
map *  <Plug>(incsearch-nohl-g*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" For gui applications
inoremap <S-Insert> <C-R>+

" Remap VIM 0 to first non-blank character
nmap 0 ^

" Fast Saving
nmap <C-s> :w!<cr>

" Fast Quitting
nmap <C-q> :qa!<cr>

" Treat long lines as break lines (useful when moving around in them)
nmap j gj
nmap k gk

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <silent> <C-k> <Plug>(ale_previous_wrap)

" Vim Projectionist, edit alternative file.
nmap t :A<cr>

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

" Like J (which appends next line to current line),
" but works the other way (appends current line to previous line)
noremap <Space>j kJ

let mapleader=","
let maplocalleader=","

nnoremap <silent> <Leader>r         :source $MYVIMRC<CR>

nnoremap <silent> <Leader><Leader>  <c-^>
nnoremap <silent> <Leader>Q         :qa!<CR>
nnoremap <silent> <Leader>cu        :ConjureConnect<CR>
nnoremap <silent> <Leader>d         :ProjectRootExe NERDTreeToggle<CR>
nnoremap <silent> <Leader>hp        <Plug>(GitGutterPreviewHunk)
nnoremap <silent> <Leader>s         :NERDTreeFind<CR>
nnoremap <silent> <Leader>`         :QFix<CR>
nnoremap <silent> <Leader>gb        :Git blame<cr>
nnoremap <silent> <Leader>wo        :CocCommand workspace.showOutput clojure<cr>
nnoremap <silent> <Leader>g         :se invhlsearch<cr>
nnoremap <silent> <Leader>ob        :BufOnly<cr>
nnoremap <silent> <Leader>rm        :Delete!<cr>

nnoremap <silent> <Leader>a         <cmd>Telescope live_grep<cr>
nnoremap <silent> <Leader>b         <cmd>Telescope buffers<cr>
nnoremap <silent> <Leader>e         <cmd>Telescope emoji<cr>
nnoremap <silent> <Leader>f         <cmd>Telescope find_files<cr>
nnoremap <silent> <Leader>g         <cmd>Telescope grep_string<cr>
nnoremap <silent> <Leader>j         <cmd>Telescope jumplist<cr>

function! s:goto_tag(tagkind) abort
  let tagname = expand('<cWORD>')
  let winnr = winnr()
  let pos = getcurpos()
  let pos[0] = bufnr()

  if CocAction('jump' . a:tagkind)
    call settagstack(winnr, {
      \ 'curidx': gettagstack()['curidx'],
      \ 'items': [{'tagname': tagname, 'from': pos}]
      \ }, 't')
  endif
endfunction

nmap <silent> <F3>                  :call RemoveCocCallsWindow()<CR>

nmap <silent> <C-j>                 <Plug>(coc-diagnostic-next)
nmap <silent> <C-k>                 <Plug>(coc-diagnostic-prev)
nmap <silent> <Leader>c             <Plug>(coc-codeaction-cursor)
nmap <silent> <Leader>ci            :call CocActionAsync('showIncomingCalls')<CR>
nmap <silent> <Leader>cl            <Plug>(coc-codeaction-line)
nmap <silent> <Leader>co            :call CocActionAsync('showOutgoingCalls')<CR>
nmap <silent> <Leader>cr            <Plug>(coc-rename)
nmap <silent> <Leader>ca            <Plug>(coc-codeaction-selected)

"nmap <silent> <Leader>cI            <Plug>(coc-implementation)<CR>
"nmap <silent> <Leader>cs            <Plug>(coc-references)
"nmap <silent> gd                    <Plug>(coc-definition)

" https://github.com/neoclide/coc.nvim/issues/1054
nmap <silent> <Leader>gI            :call <SID>goto_tag("Implementation")<CR>
nmap <silent> <Leader>gs            :call <SID>goto_tag("References")<CR>
nmap <silent> gd                    :call <SID>goto_tag("Definition")<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Check Backspace - has to be SCRIPT LOCAL (aka SID)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:checkBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~ '\s'
endfunction

inoremap <silent> <expr><TAB>       coc#pum#visible() ? coc#pum#next(1) : <SID>checkBackspace() ? "\<Tab>" : coc#refresh()
inoremap <silent> <expr><S-TAB>     coc#pum#visible() ? coc#pum#prev(1) : "\<S-TAB>"

inoremap <silent> <expr><C-j>       coc#pum#visible() ? coc#pum#next(1) : "\<C-n>"
inoremap <silent> <expr><C-k>       coc#pum#visible() ? coc#pum#prev(1) : "\<C-p>"

inoremap <silent> <expr><c-space>   coc#refresh()
inoremap <silent> <expr><cr>        coc#pum#visible() ? coc#_select_confirm() : "\<CR>"


nmap <S-Right> <Plug>(sexp_capture_next_element)<Plug>(sexp_indent)
nmap <S-Left> <Plug>(sexp_emit_tail_element)<Plug>(sexp_indent)
imap <S-Right> <C-O><Plug>(sexp_capture_next_element)<C-O><Plug>(sexp_indent)
imap <S-Left> <C-O><Plug>(sexp_emit_tail_element)<C-O><Plug>(sexp_indent)
vmap <e <Plug>(sexp_swap_element_backward)
vmap >e <Plug>(sexp_swap_element_forward)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Show Documentation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

"function! s:show_documentation()
"  if &filetype == 'vim'
"    execute 'h '.expand('<cword>')
"  else
"    call CocActionAsync('doHover')
"  endif
"endfunction

nnoremap <silent> <c-space> coc#refresh<CR>
nnoremap <silent> K         :call <SID>show_documentation()<CR>
nnoremap <silent> cram      :call CocAction('runCommand', 'lsp-clojure-add-missing-libspec')<CR>
nnoremap <silent> crcn      :call CocAction('runCommand', 'lsp-clojure-clean-ns')<CR>
nnoremap <silent> crcp      :call CocAction('runCommand', 'lsp-clojure-cycle-privacy')<CR>

command! W w !sudo tee % > /dev/null
command! PU PlugClean! | PlugUpdate | PlugUpgrade
command! Q q

" FZF + RG
command! -bang -nargs=* Rg
\ call fzf#vim#grep(
\   'rg --column --line-number --hidden --smart-case --no-heading --color=always --follow -g \'!.git/\''.shellescape(<q-args>), 1,
\   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
\           : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
\   <bang>0)

" Insert UUIDs via ctrl+u
inoremap <c-4> <space>"<c-r>=trim(system('uuidgen'))<cr>"
nnoremap <c-4> i<space>"<c-r>=trim(system('uuidgen'))<cr>"<esc>

" vim: set syntax=vim:
