return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
    { "tpope/vim-fugitive" },
    -- Markdown, html, latex preview
    {
        "OXY2DEV/markview.nvim",
        lazy = false,
        opts = {
            -- Start with the preview off, toggle it on per buffer
            preview = { enable = false },
        },
        keys = {
            { "<leader>mt", "<cmd>Markview toggle<cr>", desc = "Toggle markview (buffer)" },
            { "<leader>ms", "<cmd>Markview splitToggle<cr>", desc = "Toggle markview split" },
        },

        -- Completion for `blink.cmp`
        -- dependencies = { "saghen/blink.cmp" },
    },
}
