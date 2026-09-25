local utils = require("utils")

local function my_diagnostics(colors)
    local bg = colors.base or "#eff1f5"
    local fade = function(c)
        return utils.fade(c, bg, 0.4)
    end

    -- Define diagnostic styles by severity (IMPORTANT)
    local diagnostics = {
        [vim.diagnostic.severity.ERROR] = { color = colors.red,    icon = "", prefix = "oops " },
        [vim.diagnostic.severity.WARN]  = { color = colors.yellow, icon = "", prefix = "uhm "  },
        [vim.diagnostic.severity.INFO]  = { color = colors.sky,    icon = "", prefix = "info " },
        [vim.diagnostic.severity.HINT]  = { color = colors.teal,   icon = "󰌵", prefix = "hint " },
    }

    local highlights = {}

    for severity, opts in pairs(diagnostics) do
        local name = vim.diagnostic.severity[severity]:gsub("^%l", string.upper)
        highlights["DiagnosticVirtualText" .. name] = {fg = fade(opts.color), bg = "NONE",}
        highlights["DiagnosticUnderline" .. name] = {sp = opts.color, undercurl = true,}
        highlights["DiagnosticSign" .. name] = {fg = fade(opts.color), bg = "NONE",}
    end

    -- Configure diagnostics (icons + cute prefixes)
    vim.diagnostic.config({
        virtual_text = {
            prefix = "",
        },
        signs = {
            text = {
                [vim.diagnostic.severity.ERROR] = diagnostics[vim.diagnostic.severity.ERROR].icon,
                [vim.diagnostic.severity.WARN]  = diagnostics[vim.diagnostic.severity.WARN].icon,
                [vim.diagnostic.severity.INFO]  = diagnostics[vim.diagnostic.severity.INFO].icon,
                [vim.diagnostic.severity.HINT]  = diagnostics[vim.diagnostic.severity.HINT].icon,
            },
        },
    })

    return highlights
end

return {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("catppuccin").setup({
        flavour = "frappe",
        background = {
          light = "latte",
        },
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
          comments = { "italic" },
          keywords = { "italic" },
          strings = { "italic" },
          functions = { "bold" },
        },
        auto_integration = true,
        custom_highlights = my_diagnostics,
      })
        vim.cmd.colorscheme("catppuccin")
    end,
}
