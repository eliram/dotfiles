filetype off                   " required!

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/vundle
" call vundle#begin()

" let Vundle manage Vundle
" required!
" Plug 'gmarik/vundle'

" Install vim-plug if we don't already have it
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')


" Utilities

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
" Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'rking/ag.vim'
Plug 'Chiel92/vim-autoformat'

" A collection of language packs for Vim.
" Plug 'sheerun/vim-polyglot'

" Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-unimpaired'

Plug 'Lokaltog/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'

Plug 'bkad/CamelCaseMotion'
Plug 'bling/vim-bufferline'
Plug 'sjl/gundo.vim'
Plug 'airblade/vim-gitgutter'
" Plug 'groenewege/vim-less'
" Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'
Plug 'elzr/vim-json'
Plug 'majutsushi/tagbar'
" Plug 'AzizLight/TaskList.vim'
" Plug 'duff/vim-bufonly'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-easytags'

" Plug 'tomtom/tlib_vim'  " needed for snipmate
" Plug 'MarcWeber/vim-addon-mw-utils'  " needed for snipmate
" Plug 'garbas/vim-snipmate'
Plug 'ervandew/supertab'  " needed for ultisnps mapping with YCM
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'matthewsimo/angular-vim-snippets'
" Plug 'othree/javascript-libraries-syntax.vim'

Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
" Plug 'tpope/vim-sleuth'
" Plug 'tpope/vim-bundler'

Plug 'gregsexton/gitv'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
" Plug 'rizzatti/dash.vim'
" Plug 'julienr/vim-cellmode'
" JS
Plug 'ternjs/tern_for_vim'
Plug 'Valloric/YouCompleteMe'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-dispatch'
Plug 'janko-m/vim-test'



" Colorschemes
" Plug 'chriskempson/base16-vim'
Plug 'altercation/vim-colors-solarized'

" Python
" Plug 'klen/python-mode', { 'for': 'python' }
" Plug 'davidhalter/jedi-vim'
" Plug 'pitluga/vimux-nose-test'

" AngularJS
Plug 'burnettk/vim-angular'
" Languages

" Vue
Plug 'posva/vim-vue'
" Plug 'sekel/vim-vue-syntastic'

" Pug.js
Plug 'dNitro/vim-pug-complete'
Plug 'digitaltoad/vim-pug'
Plug 'othree/html5.vim'


" call vundle#end()            " required
filetype plugin indent on    " required
call plug#end()
