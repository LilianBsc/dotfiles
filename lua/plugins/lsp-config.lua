return {
  {
    "williamboman/mason.nvim",
    config = true,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    opts = {
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "pyright",
        "marksman",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = { "mason-lspconfig.nvim" },
    config = function()
      -- ─────────────────────────────────────────────────────────────
      -- Common LSP keymaps (buffer-local)
      -- ─────────────────────────────────────────────────────────────
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(ev)
          local map = function(mode, lhs, rhs, desc)
            vim.keymap.set(mode, lhs, rhs, { buffer = ev.buf, desc = desc })
          end

          map("n", "K", vim.lsp.buf.hover, "Hover")
          map("n", "gd", vim.lsp.buf.definition, "Go to definition")
          map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
          map("n", "<leader>d", vim.diagnostic.open_float, "Line diagnostics")
        end,

      })

      -- ─────────────────────────────────────────────────────────────
      -- Lua
      -- ─────────────────────────────────────────────────────────────
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              checkThirdParty = false,
            },
          },
        },
      })

      -- ─────────────────────────────────────────────────────────────
      -- TypeScript / JavaScript
      -- ─────────────────────────────────────────────────────────────
      vim.lsp.config("ts_ls", {
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
        },
      })

      -- ─────────────────────────────────────────────────────────────
      -- Python (pyright)
      -- ─────────────────────────────────────────────────────────────
      vim.lsp.config("pyright", {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic", -- "off" | "basic" | "strict"
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
            },
          },
        },
      })
      vim.lsp.config("ruff", {})

      -- ─────────────────────────────────────────────────────────────
      -- Markdown
      -- ─────────────────────────────────────────────────────────────
      vim.lsp.config("marksman", {})

       -- -- --
      -- YAML --
       -- -- --
      vim.lsp.config("circleci_yaml_language_server", {})

       -- ------------ --
      -- Azure Pipeline --
       -- ------------ --
      vim.lsp.config("azure_pipelines_ls", {})
    end,
  },
}
