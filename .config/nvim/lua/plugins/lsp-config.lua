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
                ensure_installed = { "lua_ls", "ts_ls", "pylsp" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Configuration for TypeScript and React
            vim.lsp.config("ts_ls",
                {
                    filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
                    cmd = { "typescript-language-server", "--stdio" }
                }
            )

            -- Configuration for Lua LS
            vim.lsp.config("lua_ls",
                {
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { "vim" },
                            },
                        },
                    },
                }
            )

            -- Configuration for Pylsp (Python)
            vim.lsp.config("pylsp",
                {
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
                }
            )

            -- Configuration for Marksman (Markdown)
            vim.lsp.config("marksman",
                {
                    filetypes = { "markdown" },
                }
            )

            -- Keymaps for LSP
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = "Show LSP diagnostic under cursor" })
        end
    }
}
