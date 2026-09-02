-- Omarchy integration: when running under Omarchy, defer colorscheme choice
-- entirely to whatever `omarchy theme set <name>` last generated, so Neovim's
-- colors always match the system theme instead of being hardcoded here.
--
-- On any other machine (Mac, Ubuntu Z13, ...) this path doesn't exist, so this
-- returns an empty spec and colorscheme.lua's hardcoded dracula.nvim wins
-- there unchanged.
local omarchy_theme = vim.fn.expand("~/.local/state/omarchy/current/theme/neovim.lua")

if vim.fn.filereadable(omarchy_theme) == 1 then
  return dofile(omarchy_theme)
end

return {}
