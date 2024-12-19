return {
  { "Mofiqul/dracula.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
    --   init = function()
    --     local dracula = require("dracula")
    --     dracula.setup({
    --       show_end_of_buffer = true,
    --       transparent_bg = false,
    --       lualine_bg_color = "#44475a",
    --       italic_comment = false,
    --     })
    --     vim.cmd("colorscheme dracula")
    --   end,
  },
}
