return {
  "coder/claudecode.nvim",
  dependencies = { "folke/snacks.nvim" },
  config = true,
  keys = {
    { "<leader>co", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
    { "<leader>ci", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
  },
}
