local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "jsonlint", filetypes = { "json" } },
}

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "fixjson",
    filetypes = { "json" } },
}
