" Fundamentals "{{{
" ---------------------------------------------------------------------

" don't show buffers in the command line
let g:bufferline_echo = 0

set nocompatible " not compatible with vi
set autoread " detect when a file is changed

" make backspace behave in a sane manner
set backspace=indent,eol,start

" set a map leader for more key combos
let mapleader = ','
let g:mapleader = ','

set history=1000 " change history to 1000

set clipboard=unnamed

" faster redrawing
" set ttyfast
" set lazyredraw

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

if has('autocmd') && !exists('autocommands_loaded')
    let autocommands_loaded = 1
    
    " automatically resize panes on resize
    autocmd VimResized * exe 'normal! \<c-w>='
    autocmd BufWritePost .vimrc source %
    autocmd BufWritePost .vimrc.local source %
    " save all files on focus lost, ignoring warnings about untitled buffers
   autocmd FocusLost * silent! wa

    " make quickfix windows take all the lower section of the screen when there
    " are multiple windows open
    autocmd FileType qf wincmd J
endif

" code folding settings
" let javaScript_fold=1         " JavaScript
" syntax region foldBraces start=/{/ end=/}/
" set syntax=javaScript

set foldmethod=indent " fold based on indent
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1
" let javaScript_fold=1

""}}}

"" User Interface "{{{
"" ---------------------------------------------------------------------
set so=7 " set 7 lines to the cursors - when moving vertical
set wildmenu " enhanced command line completion
set hidden " current buffer can be put into background
set showcmd " show incomplete commands
set noshowmode " don't show which mode disabled for PowerLine
set wildmode=list:longest " complete files like a shell
set scrolloff=3 " lines of text around cursor
set shell=$SHELL
set cmdheight=2 " command bar height

set title " set terminal title

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink
set wildignore+=*.pyc,*.o,*.class,*/build/*,*/tmp/*,*.so,*.swp,*.zip,*/static/doc/javascripts/*,/var/*
set wildignore+=tags,gems.tags,*/vendor/*,*.png,*.jpg,*.otf,*.woff,*.jpeg,*.ttf

set encoding=utf8

" set number " show line numbers
set relativenumber " show relative line numbers
set number " show the current line number"
set cursorline

" set wrap "turn on line wrapping
" set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
set showbreak=… " show ellipsis at breaking


set autoindent " automatically set indent of new line
set smartindent

" don't hide quotes in json files
let g:vim_json_syntax_conceal = 0

""}}}

"" File types "{{{
"" ---------------------------------------------------------------------

autocmd FileType javascript set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
autocmd FileType vue set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
autocmd FileType python set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd FileType yaml set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" SQL
au BufNewFile,BufRead *.sql SQLSetType plsql.vim

""}}}

" Files, backups, and undo "{{{

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" vim - Persistent Undo
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

"}}}
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
runtime ./abbr.vim
"}}}

" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif

"}}}

"" Extras "{{{
"" ---------------------------------------------------------------------
"set exrc
""}}}
