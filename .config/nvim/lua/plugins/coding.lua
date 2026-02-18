return {
    {
        'nvim-treesitter/nvim-treesitter',
        branch = "main",
        lazy = false,
        build = ':TSUpdate',
        init = function()
            vim.api.nvim_create_autocmd("FileType", {
                callback = function(args)
                    local filetype = args.match
                    local lang = vim.treesitter.language.get_lang(filetype)
                    require("nvim-treesitter").install(lang):await(function()
                        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
                        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                        vim.treesitter.start()
                    end)
                end
            })
        end,
    },
}
