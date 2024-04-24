lvim.plugins = {
    'tpope/vim-surround',         -- quick functions to current string or change there surround type
    'tpope/vim-fugitive',         -- git ...
    'terryma/vim-multiple-cursors', -- enable multiline select actions
    'rking/ag.vim',               -- the silver searcher...
    'wfxr/minimap.vim',
    "mfussenegger/nvim-jdtls",
    'tpope/vim-dotenv',
    'majutsushi/tagbar',
    'mfussenegger/nvim-dap-python',
    'ChristianChiarulli/swenv.nvim',
    "nvim-neotest/neotest",
    "nvim-neotest/neotest-python",
    "stevearc/dressing.nvim",
    { 'tpope/vim-repeat', keys = { "." } }, -- nice tool that extendes the '.' command to reapet last action
    {
        "phaazon/hop.nvim",
        -- event = "BufRead",
        config = function()
            require("user.hop").config()
        end,
    }, -- jump to location like EasyMotion
    {
        "iamcco/markdown-preview.nvim",
        -- build = "cd app && npm install",
        build = function() vim.fn["mkdp#util#install"]() end,
        ft = "markdown",
        config = function()
            -- require("user.markdown-preview").config()
            vim.g.mkdp_auto_start = 1
        end,
    },
    {
        "folke/trouble.nvim",
        cmd = "TroubleToggle",
    },
    -- {
    --     'pwntester/octo.nvim',
    --     dependencies = {
    --         'nvim-lua/plenary.nvim',
    --         'nvim-telescope/telescope.nvim',
    --         'nvim-tree/nvim-web-devicons',
    --     },
    --     config = function()
    --         require "octo".setup()
    --     end
    -- },
}
