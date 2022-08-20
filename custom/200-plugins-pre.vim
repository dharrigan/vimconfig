"
" Pre Load Plugins Config
"

"
" Not a plugin, but controls how neovide displays stuff.
"
let g:neovide_floating_opacity = 0.9
let g:neovide_floating_blur = 0.0
let g:neovide_cursor_vfx_mode = "railgun"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => airblade/vim-gitgutter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_highlight_linenrs = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => chaoren/vim-wordmotion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:wordmotion_spaces = ['_', '-', '.']
let g:wordmotion_uppercase_spaces = ['-']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => dense-analysis/ale
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_disable_lsp = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_changed = 'always'
let g:ale_pattern_options = {
\   '.*\.yaml$': {'ale_enabled': 0},
\   '.*\.yml$': {'ale_enabled': 0},
\}

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
" => clojure-vim/clojure-vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clojure_align_multiline_strings = 1
let g:clojure_align_subforms = 1
let g:clojure_fuzzy_indent = 1
let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let', '-tpl$', 'POST', 'GET', 'PUT', 'DELETE', 'PATCH']
let g:clojure_maxlines = 100

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => guns/vim-sexp
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sexp_enable_insert_mode_mappings = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 'liuchengxu/vim-clap'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clap_disable_run_rooter = v:true
"let g:clap_layout = { 'relative': 'editor', 'width': '75%', 'height': '33%', 'row': '33%', 'col': '25%' }
let g:clap_layout = { 'width': '67%', 'height': '33%', 'row': '33%', 'col': '17%' }
let g:clap_open_preview = 'never'
let g:clap_popup_input_delay = 5
let g:clap_provider_grep_delay = 5
let g:clap_provider_grep_opts = '-H --no-heading --vimgrep --smart-case --hidden -g "!.git/"'

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
" I know that neovim has this built in, but this plugin works better! It's able
" to highlight words (and boundaries) in a far more visible fashion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:highlightedyank_highlight_duration = 250

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => mileszs/ack.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ackprg = 'rg --vimgrep'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => neoclide/coc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_default_semantic_highlight_groups = 1

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
let g:conjure#log#hud#height = 0.95
let g:conjure#eval#comment_prefix = ";; "
let g:conjure#mapping#def_word = v:false
let g:conjure#mapping#doc_word = v:false
let g:conjure#eval#gsubs = {'do-comment': ['^%(comment[%s%c]', '(do ']}
let g:conjure#client#clojure#nrepl#test#current_form_names = ['deftest', 'defexpect']
let g:conjure#client#clojure#nrepl#connection#auto_repl#hidden = v:true
let g:conjure#client#clojure#nrepl#eval#raw_out = v:true
let g:conjure#highlight#enabled = 1
let g:conjure#highlight#timeout = 250
let g:conjure#client#clojure#nrepl#connection#auto_repl#enabled = v:false
let g:conjure#client#clojure#nrepl#connection#auto_repl#hidden = v:true

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => preservim/nerdtree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeChDirMode = 2
let g:NERDTreeIgnore = ['node_modules', 'tmp', 'classes', 'target', '.cpcache']
let g:NERDTreeQuitOnOpen=0
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeWinSize=60

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => preservim/vim-lexical
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:lexical#dictionary_key = '<leader>k'
let g:lexical#thesaurus = ['~/Documents/thesaurus/mthesaur.txt']
let g:lexical#thesaurus_key = '<leader>t'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => RRethy/vim-illuminate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Illuminate_ftblacklist = ['nerdtree']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ryanoasis/vim-devicons
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => sheerun/vim-polyglot
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:polyglot_disabled = ['markdown']
let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0

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
let g:markdown_syntax_conceal = 0
let g:vim_json_conceal = 0

" vim: set syntax=vim:
