"
" Pre Load Plugins Config
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => airblade/vim-gitgutter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_highlight_linenrs = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => alok/notational-fzf-vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:nv_default_extension = ".adoc"
let g:nv_main_directory = '~/Documents'
let g:nv_search_paths = ['~/development/notes']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => chaoren/vim-wordmotion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:wordmotion_spaces = ['_', '-', '.']
let g:wordmotion_uppercase_spaces = ['-']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => dense-analysis/ale
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_fix_on_save = 1
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_changed = 'always'
let g:ale_linters = {'clojure': ['clj-kondo']}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => drewtempelmeyer/palenight.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:palenight_terminal_italics=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => eraserhd/parinfer-rust
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:parinfer_mode='smart'
let g:parinfer_force_balance=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => haya14busa/incsearch.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:incsearch#auto_nohlsearch = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => guns/clojure-static
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clojure_align_multiline_strings = 1
let g:clojure_align_subforms = 1
let g:clojure_fuzzy_indent = 1
let g:clojure_fuzzy_indent_blacklist = ['-fn$', '\v^with-%(meta|out-str|loading-context)$']
let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let', '-tpl$']
let g:clojure_maxlines = 0
let g:clojure_special_indent_words = 'deftype,defrecord,reify,proxy,extend-type,extend-protocol,letfn'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => guns/vim-sexp
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sexp_enable_insert_mode_mappings = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => liuchengxu/vista.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vista#renderer#enable_icon = 1
let g:vista_close_on_jump=1
let g:vista_sidebar_position="vertical topleft"
let g:vista_sidebar_width=60

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => luochen1990/rainbow
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1
let g:rainbow_conf = {'separately': {'html': 0}} " disable for html

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => machakann/vim-highlightyank
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:highlightedyank_highlight_duration = 250

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => mileszs/ack.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ackprg = 'rg --vimgrep'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => neoclide/coc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_global_extensions = ['coc-conjure']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ncm2/float-preview
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:float_preview#docked = 0
let g:float_preview#max_heigh = 40
let g:float_preview#max_width = 80

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ntpeters/vim-better-whitespace
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:better_whitespace_filetypes_blacklist = ['diff', 'gitcommit', 'help']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => olical/conjure
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:conjure#log#botright = 1
let g:conjure#eval#comment_prefix = ";; "
let g:conjure#mapping#def_word = v:false
let g:conjure#mapping#doc_word = v:false

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => preservim/nerdtree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeIgnore = ['node_modules', 'tmp', 'classes', 'target']
let g:NERDTreeQuitOnOpen=0
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeWinSize=60

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => reedes/vim-lexical
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lexical#dictionary_key = '<leader>k'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ryanoasis/vim-devicons
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => sheerun/vim-polyglot
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:polyglot_disabled = ['markdown']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => shougo/deoplete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" not enabled as 'deoplete' is not defined.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline/vim-airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
let g:airline_skip_empty_sections = 1
let g:airline_symbols.space = "\ua0"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline/vim-airline-themes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='palenight'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => yggdroot/indentline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char_list = ['|']

" vim: set syntax=vim:
