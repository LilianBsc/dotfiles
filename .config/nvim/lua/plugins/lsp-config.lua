return {
    
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pylsp" }
                })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            lspconfig = require("lspconfig")
            lspconfig.pylsp.setup {
                on_attach = custom_attach,
                settings = {
                    pylsp = {
                        plugins = {
                            -- formatter options
                            -- black = { enabled = true },
                            -- autopep8 = { enabled = false },
                            --yapf = { enabled = false },
                            -- linter options
                            pylint = { enabled = true, executable = "pylint" },
                            -- pyflakes = { enabled = false },
                            -- pycodestyle = { enabled = false },
                            -- type checker
                            -- pylsp_mypy = { enabled = true },
                            -- auto-completion options
                            -- jedi_completion = { fuzzy = true },
                            -- import sorting
                            -- pyls_isort = { enabled = true },
                        },
                    },
                },
                flags = {
                debounce_text_changes = 200,
                },
                capabilities = capabilities,
            }

            -- local lspconfig = require("lspconfig")
            -- lspconfig.lua_ls.setup({})
            -- lspconfig.pyright.setup({})

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
