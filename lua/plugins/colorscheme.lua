-- On Omarchy, plugins/theme.lua takes over the colorscheme (dynamically, via
-- `omarchy theme set`) — don't also declare one here or the two collide.
-- Everywhere else (Mac, Ubuntu Z13, ...) that file is a no-op and this wins.
local on_omarchy = vim.fn.filereadable(vim.fn.expand("~/.local/state/omarchy/current/theme/neovim.lua")) == 1

return {
  -- Harmless to keep installed even on Omarchy (aether.nvim is what actually
  -- renders there) — just never set as the active colorscheme in that case.
  { "Mofiqul/dracula.nvim" },
  {
    "LazyVim/LazyVim",
    opts = on_omarchy and {} or {
      colorscheme = "dracula",
    },
    init = function()
      -- Also matches "aether" — Omarchy 4's git-cloned-theme mechanism (which
      -- is how this Dracula install actually got applied) renders every theme,
      -- Dracula included, through a shared aether.nvim colorscheme rather than
      -- Mofiqul/dracula.nvim, so these overrides need to fire under that name
      -- too or they'd silently stop applying under Omarchy.
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = { "dracula", "aether" },
        callback = function()
          -- === Core Diff Groups ===
          vim.api.nvim_set_hl(0, "DiffAdd",      { fg = "#00ff00", bg = "#003300", bold = true })
          vim.api.nvim_set_hl(0, "DiffDelete",   { fg = "#ff0000", bg = "#330000", bold = true })
          vim.api.nvim_set_hl(0, "DiffChange",   { fg = "#ffff00", bg = "#333300", bold = true })
          vim.api.nvim_set_hl(0, "DiffText",     { fg = "#000000", bg = "#ff8800", bold = true })

          -- === Line-level Groups (Diffview enhanced diffs) ===
          vim.api.nvim_set_hl(0, "DiffAddLn",      { fg = "#00ff00", bg = "#003300" })
          vim.api.nvim_set_hl(0, "DiffDeleteLn",   { fg = "#ff0000", bg = "#330000" })
          vim.api.nvim_set_hl(0, "DiffChangeLn",   { fg = "#ffff00", bg = "#333300" })
          vim.api.nvim_set_hl(0, "DiffTextLn",     { fg = "#000000", bg = "#ff8800", bold = true })

          -- === Diffview-specific Extras ===
          vim.api.nvim_set_hl(0, "DiffviewDiffAddAsDelete", { fg = "#ff5555", bg = "#330000", bold = true })
          vim.api.nvim_set_hl(0, "DiffviewDiffDelete",      { fg = "#ff5555", bg = "#330000", bold = true })
          vim.api.nvim_set_hl(0, "DiffviewStatusAdded",     { fg = "#00ff00", bold = true })
          vim.api.nvim_set_hl(0, "DiffviewStatusDeleted",   { fg = "#ff0000", bold = true })
          vim.api.nvim_set_hl(0, "DiffviewStatusModified",  { fg = "#ffff00", bold = true })
          vim.api.nvim_set_hl(0, "DiffviewStatusRenamed",   { fg = "#8be9fd", bold = true })
          vim.api.nvim_set_hl(0, "DiffviewStatusUnmerged",  { fg = "#ff79c6", bold = true })

          -- === GitSigns Groups (buffer gutter indicators) ===
          vim.api.nvim_set_hl(0, "GitSignsAdd",    { fg = "#00ff00", bg = "NONE" })
          vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#ffff00", bg = "NONE" })
          vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#ff0000", bg = "NONE" })

          -- === Optional: Virtual text for GitSigns (inline blame/hunks) ===
          vim.api.nvim_set_hl(0, "GitSignsAddLn",    { fg = "#00ff00", bg = "#003300" })
          vim.api.nvim_set_hl(0, "GitSignsChangeLn", { fg = "#ffff00", bg = "#333300" })
          vim.api.nvim_set_hl(0, "GitSignsDeleteLn", { fg = "#ff0000", bg = "#330000" })
        end,
      })
    end,
  },
}
