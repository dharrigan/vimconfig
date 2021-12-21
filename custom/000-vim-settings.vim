"
" Vim Settings
"

syntax on
filetype indent plugin on

set autoindent
set autoread
set autowrite
set background=dark
set backspace=indent,eol,start
set cino=
set clipboard+=unnamedplus,unnamed
set complete=.,w,b,u,t,i,d,t,k
set completeopt=longest,menuone,preview,noinsert,noselect
set copyindent
set cursorline
set dictionary+=/usr/share/dict/words
set directory-=.
set encoding=utf8
set expandtab
set fileformat=unix
set fileformats=unix
set foldlevel=1
set foldmethod=indent
set foldnestmax=10
set formatoptions=tcqrn2j
set go+=a
set grepprg=rg\ --vimgrep
set hidden
set history=100
set hlsearch
set ignorecase
set inccommand=split
set incsearch
set infercase
set isfname-==
set laststatus=2
set lazyredraw
set linebreak
set listchars=tab:>-,trail:.,extends:*,precedes:.,eol:¶
set matchtime=2
set modelines=5
set nobackup
set nocindent
set noconfirm
set noerrorbells
set nofoldenable
set nolist
set noswapfile
set nowrap
set nowritebackup
set number
set omnifunc=syntaxcomplete#Complete
set pdev=default
set printoptions=paper:A4,duplex:off,collate:n,syntax:y,portrait:n,number:y
set redrawtime=10000
set relativenumber
set rtp+=~/.fzf
set rtp+=~/.fzf/bin
set ruler
set shiftround
set shiftwidth=4
set shortmess+=cA
set showbreak=\ \ \ \ \ \ >
set showcmd
set showfulltag
set showmatch
set showmode
set sidescroll=1
set signcolumn=yes
set smartcase
set smarttab
set softtabstop=4
set spelllang=en_gb
set splitbelow
"set splitright
set startofline
set statusline=%<%F%h%m%r%=%{&ff}\ %l,%c%V\ %P\ %#warningmsg#\ %*
set tabstop=4
set tags+=tags;$HOME
set termguicolors
set textwidth=256
set ttimeoutlen=100
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername}
set undodir=$HOME/.vim/undos
set undofile
set updatetime=100
set viewoptions=cursor,folds,options,slash,unix
set viminfo='100,f1,<500,/100,:100,%
set visualbell
set whichwrap=<,>,[,],b,
set wildignore=*.class,*.o,.git,node_modules,*~,build,out,target,.svn,.hg
set wildmenu
set wildmode=longest,list,full
set winminheight=0
set wrapmargin=0
set wrapscan
set writeany
set writebackup

if has('nvim')
    set ttimeout
    set ttimeoutlen=0
    set encoding=utf-8
endif

if has('mouse')
    set mouse=a
endif

" vim: set syntax=vim:
