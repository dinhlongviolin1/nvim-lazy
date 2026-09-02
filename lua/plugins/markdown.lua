-- Overrides on top of LazyVim's lang.markdown extra — less visual noise:
-- 1. Stop markdownlint-cli2 nagging about line length (MD013) on every
--    prose line over 80 chars, everywhere, not just per-project.
-- 2. Turn off render-markdown.nvim's colored code-block background, which
--    was the actual "distracting" part — headings/bold/lists etc. all stay.
return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = { "--config", vim.fn.stdpath("config") .. "/markdownlint-global.jsonc", "-" },
        },
      },
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      code = { enabled = false },
    },
  },
}
