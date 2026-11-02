"
" Plugins
"
call plug#begin('~/.vim/bundle')

    Plug 'nvim-mini/mini.nvim'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'windwp/nvim-autopairs'

    Plug 'ConradIrwin/vim-bracketed-paste'
    Plug 'NoahTheDuke/vim-just'
    Plug 'airblade/vim-gitgutter'
    Plug 'chaoren/vim-wordmotion'
    Plug 'conradirwin/vim-bracketed-paste'
    Plug 'dbakker/vim-projectroot'
    Plug 'dense-analysis/ale'
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'flazz/vim-colorschemes'
    Plug 'haya14busa/incsearch.vim'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'kshenoy/vim-signature'
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

    " nvim_lua is defined
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
    Plug 'julienvincent/nvim-paredit'
    Plug 'clojure-vim/clojure.vim', {'branch': 'indent-forms', 'for': ['clojure', 'fennel']}
    Plug 'NoahTheDuke/coc-clojure', {'for': ['clojure']}
    Plug 'eraserhd/parinfer-rust', {'do': 'cargo build --release', 'for': ['clojure', 'fennel']}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" vim: set syntax=vim:
