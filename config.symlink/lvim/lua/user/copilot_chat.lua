local ok, copilotChat = pcall(require, "CopilotChat")
if not ok then
  return
end
copilotChat.setup {
  debug = true,
   window = {
      layout = 'float',
      relative = 'cursor',
      width = 1,
      height = 0.4,
      row = 1
    },
  {
    "<leader>cch",
    function()
      local actions = require("CopilotChat.actions")
      require("CopilotChat.integrations.telescope").pick(actions.help_actions())
    end,
    desc = "CopilotChat - Help actions",
  },
  -- Show prompts actions with telescope
  {
    "<leader>ccp",
    function()
      local actions = require("CopilotChat.actions")
      require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
    end,
    desc = "CopilotChat - Prompt actions",
  },

}

lvim.builtin.which_key.mappings["cc"] = {
	name = "CopilotChat",
	t = { "<cmd>TroubleToggle<cr>", "trouble" },
	w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
	d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
	q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
	l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
	r = { "<cmd>TroubleToggle references<cr>", "references" },
}

