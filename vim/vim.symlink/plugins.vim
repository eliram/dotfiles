filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Utilities
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'rking/ag.vim'
" Plugin 'Raimondi/delimitMate'
Bundle 'tpope/vim-unimpaired'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'bkad/CamelCaseMotion'
Bundle 'bling/vim-bufferline'
Bundle 'ervandew/supertab'
Bundle 'sjl/gundo.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'groenewege/vim-less'
Bundle 'scrooloose/syntastic'
Bundle 'elzr/vim-json'
Bundle 'majutsushi/tagbar'
Bundle 'AzizLight/TaskList.vim'
Bundle 'duff/vim-bufonly'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'

Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-sensible'
" Bundle 'tpope/vim-sleuth'
Bundle 'tpope/vim-bundler'

Bundle 'gregsexton/gitv'

Bundle 'bling/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
" Plugin 'julienr/vim-cellmode'




" Colorschemes
Bundle 'altercation/vim-colors-solarized'

" Python
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
Plugin 'pitluga/vimux-nose-test'

" Languages


call vundle#end()            " required
filetype plugin indent on    " required
