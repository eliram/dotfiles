require("lvim.lsp.manager").setup("cucumber_language_server", {
    -- cmd = { "cucumber-language-server"},
    cmd = { "cucumber-language-server", "--stdio" },
    filetypes = { "cucumber", "feature" },
    root_dir = require("lspconfig").util.find_git_ancestor,
    settings = {
    cucumber = {
      cucumber = {
        features = {"**/*.feature"},
        glue = {"**/*.js", "**/*.steps.js", "**/*.py"}
      },
    },
        cucumber = {
            features = {"**/*.feature"},
            glue = {"**/*.js", "**/*.steps.js", "**/*.py"}
        },
            features = {"**/*.feature"},
            glue = {"**/*.js", "**/*.steps.js", "**/*.py"}
    }
})
