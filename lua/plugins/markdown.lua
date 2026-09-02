-- Override on top of LazyVim's lang.markdown extra: turn off
-- render-markdown.nvim's colored code-block background, the actual
-- "distracting" part — headings/bold/lists etc. all stay rendered.
--
-- markdownlint (MD013/MD040 etc.) is left at LazyVim's defaults on purpose —
-- toggle diagnostics on demand with <leader>ud (Snacks.toggle.diagnostics())
-- instead of permanently disabling rules globally.
return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      code = { enabled = false },
    },
  },
}
