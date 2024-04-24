reload("user.lsp.languages.js-ts")
reload("user.lsp.languages.json")
reload("user.lsp.languages.css")
reload("user.lsp.languages.python")
-- reload("user.lsp.languages.cucumber")

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	-- { command = "google_java_format", filetypes = { "java" } },
	{ command = "stylua", filetypes = { "lua" } },
	{ command = "shfmt", filetypes = { "sh", "zsh" } },
})
