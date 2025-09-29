return {
    -- {
    --     "OXY2DEV/markview.nvim",
    --     lazy = false,
    --     opts = {
    --         preview = {
    --             filetypes = { "markdown", "codecompanion" },
    --             ignore_buftypes = {},
    --         },
    --
    --     },
    -- },
    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" },
        ft = { "markdown", "codecompanion" },
        config = function()
            require("render-markdown").setup({
                completions = { lsp = { enabled = true } },
            })
        end
    },
}
