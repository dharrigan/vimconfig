"
" Plugins
"
call plug#begin('~/.vim/bundle')

    Plug 'ConradIrwin/vim-bracketed-paste'
    Plug 'NoahTheDuke/vim-just'
    Plug 'RRethy/vim-illuminate'
    Plug 'airblade/vim-gitgutter'
    Plug 'chaoren/vim-wordmotion'
    Plug 'conradirwin/vim-bracketed-paste'
    Plug 'dbakker/vim-projectroot'
    Plug 'dense-analysis/ale'
    if has('nvim-0.9')
        Plug 'drewtempelmeyer/palenight.vim'
    else
        Plug 'drewtempelmeyer/palenight.vim', {'commit': '847fcf5'}
    endif
    Plug 'editorconfig/editorconfig-vim'
    Plug 'flazz/vim-colorschemes'
    Plug 'haya14busa/incsearch.vim'
    Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
    Plug 'junegunn/fzf.vim'
    Plug 'kshenoy/vim-signature'
    Plug 'luochen1990/rainbow'
    Plug 'machakann/vim-highlightedyank'
    Plug 'machakann/vim-sandwich'
    Plug 'micarmst/vim-spellsync'
    Plug 'mileszs/ack.vim'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'preservim/nerdtree'
    Plug 'preservim/vim-lexical'
    Plug 'schickling/vim-bufonly'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-projectionist'
    Plug 'tpope/vim-repeat'
    Plug 'vim-scripts/gitignore'
    Plug 'xuyuanp/nerdtree-git-plugin'
    Plug 'yggdroot/indentline'

    " nvim_lua is defined
    Plug 'NeogitOrg/neogit'
    Plug 'Olical/aniseed'
    Plug 'folke/which-key.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'stevearc/conform.nvim'
    Plug 'xiyaowong/telescope-emoji'

    " Clojure plugins
    Plug 'Olical/conjure', {'branch': 'main', 'for': ['clojure', 'fennel']}
    Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
    Plug 'clojure-vim/clojure.vim', {'for': ['clojure', 'fennel']}
    Plug 'NoahTheDuke/coc-clojure', {'for': ['clojure']}
    Plug 'eraserhd/parinfer-rust', {'do': 'cargo build --release', 'for': ['clojure', 'fennel']}
    Plug 'guns/vim-clojure-highlight', {'for': ['clojure', 'fennel']}
    Plug 'guns/vim-sexp', {'for': ['clojure', 'fennel']}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': ['clojure', 'fennel']}

call plug#end()

" vim: set syntax=vim:
