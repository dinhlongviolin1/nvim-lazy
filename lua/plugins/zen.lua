-- Distraction-free writing. Note: Snacks (already active via LazyVim core)
-- has its own built-in zen mode at <leader>uz — try that first, it needs no
-- extra plugin. These are the dedicated standalone plugins instead, for
-- twilight's specific "dim everything but the current paragraph" effect,
-- which Snacks' zen module doesn't replicate.
return {
  {
    "folke/zen-mode.nvim",
    dependencies = { "folke/twilight.nvim" },
    cmd = "ZenMode",
    keys = {
      { "<leader>uZ", "<cmd>ZenMode<cr>", desc = "Zen Mode (dedicated plugin)" },
    },
    opts = {
      window = {
        backdrop = 0.95,
        width = 100,
      },
      plugins = {
        twilight = { enabled = true },
      },
    },
  },
  {
    "folke/twilight.nvim",
    cmd = "Twilight",
    opts = {},
  },
}
