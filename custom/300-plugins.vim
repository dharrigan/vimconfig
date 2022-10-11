"
" Plugins
"
call plug#begin('~/.vim/bundle')

    Plug 'Olical/aniseed'
    Plug 'RRethy/vim-illuminate'
    Plug 'airblade/vim-gitgutter'
    Plug 'chaoren/vim-wordmotion'
    Plug 'conradirwin/vim-bracketed-paste'
    Plug 'dbakker/vim-projectroot'
    Plug 'dense-analysis/ale'
    Plug 'docunext/closetag.vim'
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'flazz/vim-colorschemes'
    Plug 'folke/which-key.nvim'
    Plug 'haya14busa/incsearch.vim'
    Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
    Plug 'junegunn/fzf.vim'
    Plug 'kshenoy/vim-signature'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'liuchengxu/vista.vim'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'luochen1990/rainbow'
    Plug 'machakann/vim-highlightedyank'
    Plug 'machakann/vim-sandwich'
    Plug 'micarmst/vim-spellsync'
    Plug 'mileszs/ack.vim'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'preservim/nerdtree'
    Plug 'preservim/vim-lexical'
    Plug 'pwntester/octo.nvim'
    Plug 'schickling/vim-bufonly'
    Plug 'sheerun/vim-polyglot'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-projectionist'
    Plug 'tpope/vim-repeat'
    "Plug 'vim-airline/vim-airline'
    "Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-scripts/gitignore'
    Plug 'xiyaowong/telescope-emoji'
    Plug 'xuyuanp/nerdtree-git-plugin'
    Plug 'yggdroot/indentline'

    Plug 'nvim-lualine/lualine.nvim'
    "Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    "Plug 'p00f/nvim-ts-rainbow'

    Plug 'Olical/conjure', {'branch': 'develop', 'for': ['clojure', 'fennel']}
    Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
    Plug 'clojure-vim/clojure.vim', {'for': ['clojure', 'fennel']}
    Plug 'dharrigan/coc-clojure', {'branch': 'fix/remove-activation-events', 'for': ['clojure']}
    Plug 'eraserhd/parinfer-rust', {'do': 'cargo build --release', 'for': ['clojure', 'fennel']}
    Plug 'guns/vim-clojure-highlight', {'for': ['clojure', 'fennel']}
    Plug 'guns/vim-sexp', {'for': ['clojure', 'fennel']}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': ['clojure', 'fennel']}
    "Plug 'walterl/conjure-efroot', {'for': ['clojure']}

call plug#end()

" vim: set syntax=vim:
