return {
    "mozanunal/sllm.nvim",
    dependencies = {
        "echasnovski/mini.notify",
        "echasnovski/mini.pick",
    },
    opts = {
        llm_cmd = "llm",
        default_model = "qwen3-coder",
        window_type = "vertical",
    },
}

-- | Keymap         | Mode  | Action                                                     |
-- |----------------|-------|------------------------------------------------------------|
-- | `<leader>ss`   | n,v   | Prompt the LLM with an input box                           |
-- | `<leader>sn`   | n,v   | Start a new chat (clears buffer)                           |
-- | `<leader>sc`   | n,v   | Cancel current request                                     |
-- | `<leader>sf`   | n,v   | Focus the LLM output buffer                                |
-- | `<leader>st`   | n,v   | Toggle LLM buffer visibility                               |
-- | `<leader>sm`   | n,v   | Pick a different LLM model                                 |
-- | `<leader>sa`   | n,v   | Add current file to context                                |
-- | `<leader>su`   | n,v   | Add content of a URL to context                            |
-- | `<leader>sv`   | v     | Add visual selection to context                            |
-- | `<leader>sd`   | n,v   | Add diagnostics to context                                 |
-- | `<leader>sx`   | n,v   | Add shell command output to context                        |
-- | `<leader>sT`   | n,v   | Add an installed tool to context                           |
-- | `<leader>sF`   | n,v   | Add Python function from buffer/selection as a tool        |
-- | `<leader>sr`   | n,v   | Reset/clear all context files                              |
