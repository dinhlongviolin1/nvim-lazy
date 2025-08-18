return {
  {
    "folke/which-key.nvim",
    optional = true, -- safe if you ever disable which-key
    opts = function(_, opts)
      opts.spec = opts.spec or {}
      -- Name the <leader>gd prefix so your diffview keys are grouped nicely
      table.insert(opts.spec, { "<leader>gd", group = "Diffview", mode = { "n", "v" } })

      -- Optional: auto-expand small groups so you don't see “+6 keymaps”
      -- Show items when a group has ≤ 10 mappings (tune to taste)
      opts.expand = 0
    end,
  },
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = {
      "DiffviewOpen",
      "DiffviewClose",
      "DiffviewToggleFiles",
      "DiffviewFocusFiles",
      "DiffviewFileHistory",
    },
    keys = {
      { "<leader>gdo", "<cmd>DiffviewOpen<cr>", desc = "Open Diffview" },
      { "<leader>gdc", "<cmd>DiffviewClose<cr>", desc = "Close Diffview" },
      { "<leader>gdf", "<cmd>DiffviewFileHistory %<cr>", desc = "File History" },
      { "<leader>gdr", "<cmd>DiffviewFileHistory<cr>", desc = "Repo History" },
      { "<leader>gdd", "<cmd>DiffviewOpen origin/dev...HEAD<cr>", desc = "Diff against dev" },
      { "<leader>gdm", "<cmd>DiffviewOpen origin/main...HEAD<cr>", desc = "Diff against main" },
    },
    opts = {
      diff_binaries = false,
      enhanced_diff_hl = true,
      git_cmd = { "git" },
      use_icons = true,
      show_help_hints = true,
      watch_index = true,
      icons = {
        folder_closed = "",
        folder_open = "",
      },
      signs = {
        fold_closed = "",
        fold_open = "",
        done = "✓",
      },
      view = {
        default = {
          layout = "diff2_horizontal",
          winbar_info = true,
        },
        merge_tool = {
          layout = "diff3_horizontal",
          disable_diagnostics = true,
          winbar_info = true,
        },
        file_history = {
          layout = "diff2_horizontal",
          winbar_info = true,
        },
      },
      file_panel = {
        listing_style = "tree",
        tree_options = {
          flatten_dirs = true,
          folder_statuses = "only_folded",
        },
        win_config = {
          position = "left",
          width = 35,
          win_opts = {},
        },
      },
      file_history_panel = {
        log_options = {
          git = {
            single_file = {
              max_count = 256,
              follow = false,
              all = false,
              merges = false,
              no_merges = false,
              reverse = false,
            },
            multi_file = {
              max_count = 256,
              follow = false,
              all = false,
              merges = false,
              no_merges = false,
              reverse = false,
            },
          },
        },
        win_config = {
          position = "bottom",
          height = 16,
          win_opts = {},
        },
      },
    },
  },
}
