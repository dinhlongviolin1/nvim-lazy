return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
  },
  lazy = false,
  branch = "main",
  keys = {
    { "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select Python Virtual Env" },
  },
}
