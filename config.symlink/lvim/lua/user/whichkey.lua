-- ,ow = 'overwrite word', replace a word with what's in the yank buffer
lvim.builtin.which_key.mappings.ow = {
	'"_diwhp',
	"overwrite",
}

-- alias yw to yank the entire word 'yank inner word'
-- even if the cursor is halfway inside the word
lvim.builtin.which_key.mappings.yw = {
	"yiww",
	"yank inner word",
}

lvim.builtin.which_key.mappings.ag = {
	'"zyiw:exe "Ag ".@z.""<CR>',
	"Yank word and ag the results to qf list",
}

lvim.builtin.which_key.mappings.sg = {
	":Telescope git_files<CR>",
	"Find git files",
}
lvim.builtin.which_key.mappings.sT = {
	':Telescope grep_string search=""<CR>',
	"Find fuzzy all files(slow)",
}

lvim.builtin.which_key.mappings.sm = {
	":Telescope marks<CR>",
	"show marks",
}

lvim.builtin.which_key.mappings.sj = {
    ":Telescope jumplist<CR>",
    "jumplist"
}

lvim.builtin.which_key.mappings.ss = {
    ":Telescope<CR>",
    "Telescope"
}

lvim.builtin.which_key.mappings["t"] = {
	name = "Diagnostics",
	t = { "<cmd>TroubleToggle<cr>", "trouble" },
	w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
	d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
	q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
	l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
	r = { "<cmd>TroubleToggle references<cr>", "references" },
}

lvim.builtin.which_key.mappings.E = { ":NvimTreeFocus<CR>", "Explorer Focus" }
