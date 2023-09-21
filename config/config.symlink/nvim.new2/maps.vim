" set a map leader for more key combos
let mapleader = ','
let g:mapleader = ','

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General mappings/shortcuts for functionality
" Additional, plugin-specific mappings are located under
" the plugins section

" disable Ex mode
noremap Q <NOP>

" edit ~/.vimrc
map <leader>ev :e! ~/.config/nvim/init.vim<cr>
" edit vim plugins
map <leader>evp :e! ~/.config/nvim/plug.vim<cr>
" edit vim functions
map <leader>evm :e! ~/.config/nvim/maps.vim<cr>
" edit gitconfig
map <leader>eg :e! ~/.gitconfig<cr>

" edit zshrc
map <leader>ez :e! ~/.zshrc<cr>

map <leader>gp :!SKIP=tests git push<cr>
map <leader>gpf :!SKIP=tests git push -f<cr>
map <leader>grd :Grebase -i origin/develop<cr>

set showbreak=↪


" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

" helpers for dealing with other people's code
nmap \t :set ts=4 sts=4 sw=4 noet<cr>
nmap \s :set ts=4 sts=4 sw=4 et<cr>

" alias yw to yank the entire word 'yank inner word'
" even if the cursor is halfway inside the word
nnoremap ,yw yiww
" ,ow = 'overwrite word', replace a word with what's in the yank buffer
nnoremap ,ow "_diwhp
" Don't have to use Shift to get into command mode, just hit semicolon
nnoremap ; :
"Go to last edit location with ,.
nnoremap ,. '.

" ,cq to toggle quickfix window (where you have stuff like GitGrep)
" ,oq to open it back up (rare)
nmap <silent> ,cq :cclose<CR>
nmap <silent> ,co :copen<CR>
nmap <silent> [q :cprevious<CR>
nmap <silent> ]q :cnext<CR>
autocmd FileType python map <buffer> <C-j> ]M
autocmd FileType python map <buffer> <C-k> [M

" copy current filename into system clipboard - mnemonic: (c)urrent(f)ilename
" this is helpful to paste someone the path you're looking at
nnoremap <silent> ,cf :let @* = expand("%:p")<CR>
" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

"close buffer but not window
map <silent> <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
"close all buffers but the current
map <silent> <leader>o :%bd\|e#<cr>


" vim - search
map <silent> <leader>h *:set hlsearch<CR>
nmap <silent> // :nohlsearch<CR>


" flake 8
let g:flake8_max_line_length=200
let g:flake8_ignore="E722"


" fix indent
nmap <silent> <leader>= gg=G<C-o><C-o>

" alias ag to yank the entire word 'yank inner word' and search for it using
" Ag - the silver searcher 
" even if the cursor is halfway inside the word
nnoremap ,ag "zyiw:exe "Ag ".@z.""<CR>
nnoremap ,A "zyiw:exe "FzfAg ".@z.""<CR>

"set more easy way to move between panes
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l


" Quickly fix spelling errors choosing the first result
nmap <Leader>z z=1<CR><CR>

" Fix annoyances in the QuickFix window, like scrolling too much
autocmd FileType qf setlocal number nolist scrolloff=0
autocmd Filetype qf wincmd J " Makes sure it's at the bottom of the vim window

" remapping arrow to move between the split windows
noremap <up> <C-w><up>
noremap <down> <C-w><down>
noremap <left> <C-w><left>
noremap <right> <C-w><right> 
