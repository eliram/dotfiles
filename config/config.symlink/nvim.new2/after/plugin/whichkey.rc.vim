" Define prefix dictionary
let g:which_key_map =  {}

let g:which_key_map.e = {
      \ 'name' : '+edit',
      \ 'g' : '~/.gitconfig',
      \ }

let g:which_key_map.g = {
  \ 'name' : '+Git',
  \ 's' : 'Status',
  \ 'b' : 'Blame',
  \ 'p' : 'Push',
  \ 'pf' : 'Push -f',
  \ }


let g:which_key_map.g.r = {
  \ 'name' : '+rebase',
  \ 'd' : 'develop',
  \ }

call which_key#register(',', "g:which_key_map")

nnoremap <silent> <leader> :WhichKey ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual ','<CR>

