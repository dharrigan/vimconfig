"
" Mappings
"

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> :bn<CR>
map <C-H> :bp<CR>
map <silent> <C-G> :se invhlsearch<CR>
map Y y$
map Q gq

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

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <F2> :Vista!!<CR>

nmap t :A<cr>

" Like J (which appends next line to current line),
" but works the other way (appends current line to previous line)
noremap <Space>j kJ

let mapleader=","
let maplocalleader=","
nnoremap <silent> <leader> :WhichKey ','<CR>

nnoremap <silent> <Leader><Leader>  :source $MYVIMRC<CR>

"nnoremap <silent> <Leader>t        :Clap tags<CR>
nnoremap <silent> <Leader><Leader>  <c-^>
nnoremap <silent> <Leader>Q         :qa!<CR>
nnoremap <silent> <Leader>a         :Clap grep<CR>
nnoremap <silent> <Leader>b         :Clap buffers<CR>
nnoremap <silent> <Leader>bo        :BufOnly<cr>
nnoremap <silent> <Leader>cu        :ConjureConnect<CR>
nnoremap <silent> <Leader>d         :ProjectRootExe NERDTreeToggle<CR>
nnoremap <silent> <Leader>f         :Clap files --hidden<CR>
nnoremap <silent> <Leader>in        :IndentLinesToggle<CR>
nnoremap <silent> <Leader>m         :Clap marks<CR>
nnoremap <silent> <Leader>n         :set number! relativenumber!<CR>
nnoremap <silent> <Leader>nv        :NV<CR>
nnoremap <silent> <Leader>p         :Clap providers<CR>
nnoremap <silent> <Leader>s         :NERDTreeFind<CR>
nnoremap <silent> <Leader>`         :QFix<CR>

nnoremap <silent> <Leader>g         :Git<cr>
nnoremap <silent> <Leader>gb        :Git blame<cr>
nnoremap <silent> <Leader>gca       :Git commit --all --verbose<cr>
nnoremap <silent> <Leader>gcc       :Git commit --verbose<cr>
nnoremap <silent> <Leader>gf        :Git fetch<cr>
nnoremap <silent> <Leader>gi        :Git diff<cr>
nnoremap <silent> <Leader>gl        :Git pull<cr>
nnoremap <silent> <Leader>gp        :Git push<cr>
nnoremap <silent> <Leader>gs        :Git status<cr>

nmap <silent> <C-J>                 <Plug>(coc-diagnostic-next)
nmap <silent> <C-K>                 <Plug>(coc-diagnostic-prev)
nmap <silent> <Leader>c             <Plug>(coc-codeaction-cursor)
nmap <silent> <Leader>ci            :call CocAction('showIncomingCalls')<CR>
nmap <silent> <Leader>cl            <Plug>(coc-codeaction-line)
nmap <silent> <Leader>co            :call CocAction('showOutgoingCalls')<CR>
nmap <silent> <Leader>cr            <Plug>(coc-rename)
nmap <silent> <Leader>cs            <Plug>(coc-references)
nmap <silent> gd                    <Plug>(coc-definition)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Check Backspace - has to be SCRIPT LOCAL (aka SID)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:checkBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent> <expr><TAB>       pumvisible() ? "\<C-n>" : <SID>checkBackspace() ? "\<TAB>" : coc#refresh()
inoremap <silent> <expr><C-J>       pumvisible() ? "\<C-n>" : <SID>checkBackspace() ? "\<C-J>" : coc#refresh()

inoremap <silent> <expr><C-K>       pumvisible() ? "\<C-p>" : "\<C-K>"
inoremap <silent> <expr><S-TAB>     pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <silent> <expr><CR>        pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


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
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

nnoremap <silent> <c-space> coc#refresh<CR>
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> cram :call CocAction('runCommand', 'lsp-clojure-add-missing-libspec')<CR>
nnoremap <silent> crcn :call CocAction('runCommand', 'lsp-clojure-clean-ns')<CR>
nnoremap <silent> crcp :call CocAction('runCommand', 'lsp-clojure-cycle-privacy')<CR>

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

" vim: set syntax=vim:
