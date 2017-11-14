filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" Utilities
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'rking/ag.vim'
Plugin 'Chiel92/vim-autoformat'

" Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-unimpaired'

Plugin 'Lokaltog/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'
Plugin 'haya14busa/incsearch-easymotion.vim'

Plugin 'bkad/CamelCaseMotion'
Plugin 'bling/vim-bufferline'
Plugin 'sjl/gundo.vim'
Plugin 'airblade/vim-gitgutter'
" Plugin 'groenewege/vim-less'
" Plugin 'scrooloose/syntastic'
Plugin 'w0rp/ale'
Plugin 'elzr/vim-json'
Plugin 'majutsushi/tagbar'
" Plugin 'AzizLight/TaskList.vim'
" Plugin 'duff/vim-bufonly'
" Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-easytags'

" Plugin 'tomtom/tlib_vim'  " needed for snipmate
" Plugin 'MarcWeber/vim-addon-mw-utils'  " needed for snipmate
" Plugin 'garbas/vim-snipmate'
Plugin 'ervandew/supertab'  " needed for ultisnps mapping with YCM
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'matthewsimo/angular-vim-snippets'
" Plugin 'othree/javascript-libraries-syntax.vim'

Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-sensible'
" Plugin 'tpope/vim-sleuth'
" Plugin 'tpope/vim-bundler'

Plugin 'gregsexton/gitv'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
" Plugin 'rizzatti/dash.vim'
" Plugin 'julienr/vim-cellmode'
" JS
Plugin 'ternjs/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-dispatch'
Plugin 'janko-m/vim-test'



" Colorschemes
" colorschemes
" Plugin 'chriskempson/base16-vim'
Plugin 'altercation/vim-colors-solarized'

" Python
Plugin 'klen/python-mode'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'pitluga/vimux-nose-test'

" AngularJS
Plugin 'burnettk/vim-angular'
" Languages

" Vue
Plugin 'posva/vim-vue'
" Plugin 'sekel/vim-vue-syntastic'

" Pug.js
Plugin 'dNitro/vim-pug-complete'
Plugin 'digitaltoad/vim-pug'
Plugin 'othree/html5.vim'


call vundle#end()            " required
filetype plugin indent on    " required
