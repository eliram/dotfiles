-- remapping arrow to move between the split windows
vim.api.nvim_set_keymap('n', '<up>', '<C-w><up>', { noremap = true })
vim.api.nvim_set_keymap('n', '<down>', '<C-w><down>', { noremap = true })
vim.api.nvim_set_keymap('n', '<left>', '<C-w><left>', { noremap = true })
vim.api.nvim_set_keymap('n', '<right>', '<C-w><right>', { noremap = true })

-- this to vv and ss
vim.api.nvim_set_keymap('n', 'vv', '<C-w>v', { noremap = true })
vim.api.nvim_set_keymap('n', 'vs', '<C-w>s', { noremap = true })

-- Don't have to use Shift to get into command mode, just hit semicolon
vim.api.nvim_set_keymap('n', ';', ':', { noremap = true })

-- map [b and b] to go between buffers
vim.api.nvim_set_keymap('n', "[b", ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', "]b", ':bnext<CR>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', ",A", 'zyiw:exe "Telescope grep_string search=".@z.""<CR>', { noremap = true })

vim.cmd([[
  " alias yw to yank the entire word 'yank inner word'
  " even if the cursor is halfway inside the word
  nnoremap ,yw yiww
  " nnoremap ,ow "_diwhp

  " nmap <silent> [b :bprevious<CR>
  " nmap <silent> ]b :bnext<CR>
  " set number " show line numbers
  set relativenumber " show relative line numbers
  set number " show the current line number"
  set cursorline

  " set wrap "turn on line wrapping
  " set wrapmargin=8 " wrap lines when coming within n characters from side
  set linebreak " set soft wrapping
  set showbreak=… " show ellipsis at breaking

  " autocmd FileType javascript set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
  autocmd FileType vue set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
  autocmd FileType javascript set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
  autocmd FileType python set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
  autocmd FileType yaml set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

]])
