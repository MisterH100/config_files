return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "java",
        "python",
        "clang"
      },
    },
  },
  {
    "nvim-tree/nvim-web-devicons",
    opts = {},
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {
        sort = {
          sorter = "case_sensitive",
        },
        view = {
          width = {
            min = 30,
            max = -1,
          },
        },
        actions = {
          open_file = {
            quit_on_open = true,
          },
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = false,
        },
        update_focused_file = {
          enable = true,
          update_cwd = true,
        },
        respect_buf_cwd = true,
      }
    end,
  },
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    -- -@type oil.SetupOpts
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      columns = {
        "permissions"
      }
    },
  },
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
  {
    "tris203/precognition.nvim",
    lazy = false,
    vent = "VeryLazy",
    opts = {
      startVisible = true,
      showBlankVirtLine = true,
      highlightColor = { link = "Comment" },
      hints = {
        Caret = { text = "^", prio = 2 },
        Dollar = { text = "$", prio = 1 },
        MatchingPair = { text = "%", prio = 5 },
        Zero = { text = "0", prio = 1 },
        w = { text = "w", prio = 10 },
        b = { text = "b", prio = 9 },
        e = { text = "e", prio = 8 },
        W = { text = "W", prio = 7 },
        B = { text = "B", prio = 6 },
        E = { text = "E", prio = 5 },
      },
      gutterHints = {
        G = { text = "G", prio = 10 },
        gg = { text = "gg", prio = 9 },
        PrevParagraph = { text = "{", prio = 8 },
        NextParagraph = { text = "}", prio = 8 },
      },
      -- disabled_fts = {
      --   "startify",
      -- },
    },
  },
  {
    "windwp/nvim-ts-autotag",
    lazy = false,
    config = function()
      require("nvim-ts-autotag").setup {
        opts = {
          enable_close = true,  -- Auto close tags
          enable_rename = true, -- Auto rename pairs of tags
          enable_close_on_slash = false,
        },
      }
    end,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    lazy = false,
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    opts = {},
    config = function()
      require("render-markdown").setup {
        completions = { lsp = { enabled = true } },
      }
    end,
    {
      "3rd/image.nvim",
      lazy = false,
      build = false,
      opts = {
        backend = "kitty",
        processor = "magick_cli",
      },
    },
    {
      "mistricky/codesnap.nvim",
      tag = "v2.0.0",
      lazy = false,
      config = function()
        require("codesnap").setup({
          code_config = {
            breadcrumbs = {
              enable = false,
            },
          }
        })
      end
    }
  },
}
