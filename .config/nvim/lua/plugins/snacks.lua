return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {

    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below

    -- bigfile = { enabled = true },
    -- dashboard = { enabled = true },
    explorer = { enabled = true },
    indent = { enabled = true },
    -- input = { enabled = true },
    -- picker = { enabled = true },
    -- notifier = { enabled = true },
    -- quickfile = { enabled = true },
    -- scope = { enabled = true },
    scroll = { enabled = true },
    -- statuscolumn = { enabled = true },
    -- words = { enabled = true },
  },
  config = function()
    vim.keymap.set(
        'n',
        '<leader>e',
        function()Snacks.explorer()end,
        { desc = "Toggle Snacks Explorer" }
    )
    Snacks.scroll.enable()
    vim.keymap.set(
        'n',
        '<leader>id',
        function()Snacks.indent.enable()end,
        { desc = "Enable Snacks Indent" }
    )
    vim.keymap.set(
        'n',
        '<leader>di',
        function()Snacks.indent.disable()end,
        { desc = "Disable Snacks Indent" }
    )
  end,
}
