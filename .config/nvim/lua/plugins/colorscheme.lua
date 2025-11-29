return { 
    -- "folke/tokyonight.nvim",
    "catppuccin/nvim",
    -- "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        -- require("onedark").load()
        -- vim.cmd[[colorscheme onedark]]
        require("catppuccin").setup({
            integrations = {
                neotree = true,
                treesitter = true,
                nvimtree = true,
                mini = {
                    enabled = true,
                    indentscope_color = "",
                },
            },
            transparent = true,
            float = {
                transparent = true,
            },
            style = {
                comments = {"italic"},
                keywords = {"italic"},
                strings = {"italic"},
                functions = {"bold"},
            },
            auto_integration = true,
        })
        vim.cmd[[colorscheme catppuccin-mocha]]
    end
}
