if !exists('g:loaded_telescope') | finish | endif

nnoremap <silent> ,t <cmd>Telescope git_files<cr>
nnoremap <silent> ,T <cmd>Telescope find_files<cr>
nnoremap <silent> ,b <cmd>Telescope buffers<cr>
nnoremap <silent> ,m <cmd>Telescope oldfiles<cr>
" nnoremap <silent> ;r <cmd>Telescope live_grep<cr>
" nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

lua << EOF
local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF
