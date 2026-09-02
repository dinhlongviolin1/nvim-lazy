-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua Add any additional options here

-- OSC 52 clipboard for tmux/SSH/herdr sessions — no-ops outside those, safe
-- on every machine (not Omarchy-specific despite where it was sourced from).
require("config.remote_clipboard").setup()

vim.g.autoformat = false

-- vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }
vim.g.root_spec = { { ".git", "lua" }, "cwd" }

-- disable animations when moving around
vim.g.snacks_animate = false

-- vim.opt.termguicolors = true
