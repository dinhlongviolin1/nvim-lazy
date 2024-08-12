return {
  "almo7aya/openingh.nvim",
  init = function()
    -- for repository page
    vim.api.nvim_set_keymap("n", "<Leader>gr", ":OpenInGHRepo <CR>", { silent = true, noremap = true, desc = "Browse Repository on Github" })

    -- for current file page
    vim.api.nvim_set_keymap("n", "<Leader>gO", ":OpenInGHFile <CR>", { silent = true, noremap = true, desc = "Browse File on Github" })
    vim.api.nvim_set_keymap("v", "<Leader>gO", ":OpenInGHFileLines <CR>", { silent = true, noremap = true, desc = "Browse Lines on Github" })
  end,
}
