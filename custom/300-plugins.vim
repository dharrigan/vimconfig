"
" Plugins
"
call plug#begin('~/.vim/bundle')

    Plug 'airblade/vim-gitgutter'
    Plug 'alok/notational-fzf-vim'
    Plug 'chaoren/vim-wordmotion'
    Plug 'conradirwin/vim-bracketed-paste'
    Plug 'dbakker/vim-projectroot'
    Plug 'dense-analysis/ale'
    Plug 'docunext/closetag.vim'
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'flazz/vim-colorschemes'
    Plug 'haya14busa/incsearch.vim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'kshenoy/vim-signature'
    Plug 'liuchengxu/vim-clap', {'do': 'cargo build --release'}
    Plug 'liuchengxu/vim-which-key'
    Plug 'liuchengxu/vista.vim'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'luochen1990/rainbow'
    Plug 'machakann/vim-highlightedyank'
    Plug 'machakann/vim-sandwich'
    Plug 'micarmst/vim-spellsync'
    Plug 'mileszs/ack.vim'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'preservim/nerdtree'
    Plug 'reedes/vim-lexical'
    Plug 'ryanoasis/vim-devicons'
    Plug 'schickling/vim-bufonly'
    Plug 'sheerun/vim-polyglot'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-projectionist'
    Plug 'tpope/vim-repeat'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-scripts/gitignore'
    Plug 'xuyuanp/nerdtree-git-plugin'
    Plug 'yggdroot/indentline'

    Plug 'Olical/conjure', { 'branch': 'develop', 'for': 'clojure' }
    Plug 'eraserhd/parinfer-rust', {'do': 'cargo build --release', 'for': 'clojure'}
    Plug 'guns/vim-clojure-highlight', {'for': 'clojure'}
    Plug 'clojure-vim/clojure.vim', {'for': 'clojure'}
    Plug 'guns/vim-sexp', {'for': 'clojure'}
    Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': 'clojure'}

    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" vim: set syntax=vim:
