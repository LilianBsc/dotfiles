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

            -- Définir on_attach si nécessaire
            local custom_attach = function(client, bufnr)
                -- Tes mappings personnalisés ici
            end

            -- Configuration de Pylsp (Python)
            vim.lsp.config("pylsp", {
                on_attach = custom_attach,
                -- capabilities = capabilities,
                settings = {
                    pylsp = {
                        plugins = {
                            -- Formatters
                            black = { enabled = true },
                            autopep8 = { enabled = false },
                            yapf = { enabled = false },

                            -- Linters
                            pylint = { enabled = true, executable = "pylint" },
                            pyflakes = { enabled = false },
                            pycodestyle = { enabled = false },
                            -- Type checker
                            pylsp_mypy = { enabled = true },
                            -- Completion
                            jedi_completion = { fuzzy = true },
                            -- Import sorter
                            pyls_isort = { enabled = true },
                        },
                    },
                },
                flags = {

                    debounce_text_changes = 200,
                },
            })


            -- Configuration de Lua LS
            vim.lsp.config("lua_ls", {
                capabilities = capabilities,
            })

            -- Configuration de Marksman (Markdown)
            vim.lsp.config("marksman", {
                filetypes = { "markdown" },
                capabilities = capabilities,

            })

            -- [Optionnel] Désactiver Pyright si besoin
            -- vim.lsp.config("pyright", {})

            -- Keymaps LSP
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = "Show LSP diagnostic under cursor" })
        end
    }
}

