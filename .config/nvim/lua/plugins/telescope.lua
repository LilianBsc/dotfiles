return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
           local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
            vim.keymap.set('n', '<leader>fh', ":Telescope find_files hidden=true<CR>", { desc = 'Telescope find files even hidden' })
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
            vim.keymap.set('n', '<leader>gh', ":Telescope grep_files hidden=true<CR>", { desc = 'Telescope grep files even hidden' })
            vim.keymap.set('n', '<leader>fq', ":Telescope diagnostics<CR>", { desc = 'Telescope grep diagnostics' })
        end
    },
    {
       'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            -- This is your opts table
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {}
                    }
                }
            })
            require("telescope").load_extension("ui-select")
        end
    }
}
