-- LazyVim's default preset is "helix" — popup anchors near the cursor and
-- sizes to whatever screen space is available there, so it can show a
-- truncated list when the cursor is somewhere cramped. "classic" always
-- renders full-size in a fixed spot instead.
return {
  "folke/which-key.nvim",
  opts = {
    preset = "classic",
  },
}
