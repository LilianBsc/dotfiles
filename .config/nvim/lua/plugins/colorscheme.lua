return { 
    "folke/tokyonight.nvim",
    -- "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        -- require("onedark").load()
        -- vim.cmd[[colorscheme onedark]]
        vim.cmd[[colorscheme tokyonight-moon]]
    end
}
