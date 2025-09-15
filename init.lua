-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local socket = "/tmp/nvim" .. vim.fn.getpid()
vim.fn.setenv("NVIM_LISTEN_ADDRESS", socket)
