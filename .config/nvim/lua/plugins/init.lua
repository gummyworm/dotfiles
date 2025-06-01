return {
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "echasnovski/mini.icons" },
    config = function()
      local fzf = require("fzf-lua")
      fzf.setup({
        winopts = {
          preview = {
            hidden = "hidden",
          },
        },
      })
      vim.keymap.set("n", "<C-P>", fzf.files, { desc = "Fzf Files" })
      vim.keymap.set("n", "<C-g>", fzf.grep, { desc = "Fzf Gitfiles" })
      vim.keymap.set("n", "<C-f>", fzf.git_files, { desc = "Fzf Gitfiles" })
    end,
  },
  {
    "maxbane/vim-asm_ca65"
  },
  -- { "ellisonleao/gruvbox.nvim" }
  {
    "olimorris/codecompanion.nvim",
    opts = {},
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    "OXY2DEV/markview.nvim",
    lazy = false,
    opts = {
      preview = {
        filetypes = { "markdown", "codecompanion" },
        ignore_buftypes = {},
      },
    },
  },
  {
    "echasnovski/mini.diff",
    config = function()
      local diff = require("mini.diff")
      diff.setup({
        -- Disabled by default
        source = diff.gen_source.none(),
      })
    end,
  },
}
