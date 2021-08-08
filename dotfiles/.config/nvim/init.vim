" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

set fileencodings=utf-8
set title
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set smarttab
"set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set si                      "Smart indent
set number                  " add line numbers
set nowrap                  "No Wrap lines
set relativenumber          " add relative number for easier go to specific line
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
"set mouse=a                 " enable mouse click
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set spell                 " enable spell check (may need to download language package)
set noswapfile            " disable creating swap file
set backupdir=~/.cache/nvim " Directory to store backup files.

" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif

set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw

highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif

runtime ./maps.vim
"}}}

" ---------------------------------------------------------------------

" Syntax theme "{{{
" ---------------------------------------------------------------------

let g:neosolarized_termtrans=1
colorscheme NeoSolarized
" true color
"if exists("&termguicolors") && exists("&winblend")
"  syntax enable
"  set termguicolors
"  set winblend=0
"  set wildoptions=pum
"  set pumblend=5
"  set background=dark
"  " Use NeoSolarized
  let g:neosolarized_termtrans=1
"  runtime ./colors/NeoSolarized.vim
"  colorscheme NeoSolarized
"endif
