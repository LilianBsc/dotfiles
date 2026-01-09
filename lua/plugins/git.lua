return {
  {
    "lewis6991/gitsigns.nvim",
    -- event = "LazyFile",
    opts = {
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "▎" },
        untracked = { text = "▎" },
      },
      signs_staged = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "▎" },
      },

      on_attach = function(buffer)
        local gs = package.loaded.gitsigns


        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc, silent = true })
        end

        -- stylua: ignore start
        map("n", "]h", function()
          if vim.wo.diff then
            vim.cmd.normal({ "]c", bang = true })
          else
            gs.nav_hunk("next")
          end
        end, "Next Hunk")
        map("n", "[h", function()

          if vim.wo.diff then
            vim.cmd.normal({ "[c", bang = true })
          else
            gs.nav_hunk("prev")
          end
        end, "Prev Hunk")
        -- map("n", "]H", function() gs.nav_hunk("last") end, "Last Hunk")
        -- map("n", "[H", function() gs.nav_hunk("first") end, "First Hunk")
        -- map({ "n", "v" }, "<leader>ghs", ":Gitsigns stage_hunk<CR>", "Stage Hunk")
        -- map({ "n", "v" }, "<leader>ghr", ":Gitsigns reset_hunk<CR>", "Reset Hunk")
        -- map("n", "<leader>ghS", gs.stage_buffer, "Stage Buffer")
        -- map("n", "<leader>ghu", gs.undo_stage_hunk, "Undo Stage Hunk")
        -- map("n", "<leader>ghR", gs.reset_buffer, "Reset Buffer")
        -- map("n", "<leader>ghp", gs.preview_hunk_inline, "Preview Hunk Inline")
        -- map("n", "<leader>ghb", function() gs.blame_line({ full = true }) end, "Blame Line")
        -- map("n", "<leader>ghB", function() gs.blame() end, "Blame Buffer")
        map("n", "<leader>ghd", gs.diffthis, "Diff This")
        -- map("n", "<leader>ghD", function() gs.diffthis("~") end, "Diff This ~")
        -- map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "GitSigns Select Hunk")
      end,
    },
  },
  {
    "tpope/vim-fugitive" -- absolute banger
  },
  {
    "esmuellert/codediff.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    cmd = "CodeDiff",
  },
  {

    "FabijanZulj/blame.nvim",
    lazy = false,
    config = function()
      -- Add a config table to the blame.nvim plugin.
      -- This table is available for modification.
      local blame_config = {
        date_format = "%d.%m.%Y",
        virtual_style = "float",
        relative_date_if_recent = true, -- this is relative only for the latest month
        focus_blame = true,
        merge_consecutive = false,
        max_summary_width = 30,
        colors = nil,
        blame_options = nil,
        commit_detail_view = "vsplit",
        format_fn = require("blame.formats.default_formats").commit_date_author_fn,
        mappings = {
            commit_info = "i",
            stack_push = "<TAB>",
            stack_pop = "<BS>",
            show_commit = "<CR>",
            close = { "<esc>", "q" },
        },
      }
      require('blame').setup(blame_config)
      vim.keymap.set("n", "<leader>b", "<cmd>BlameToggle<CR>", { desc = "Toggle Blame" })
    end,
    opts = {
      blame_options = { '-w' },
    }
  },
}
