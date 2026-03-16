return {
  -- Configure LazyVim to load gruvbox
  {
    "shaunsingh/nord.nvim",
  },
  {
    "neanias/everforest-nvim",
  },
  {
    "olivercederborg/poimandres.nvim",
    config = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          -- vim.api.nvim_set_hl(0, "Normal", { fg = vim.api.nvim_get_hl(0, { name = "Normal" }).fg, bg = "black" })

          vim.api.nvim_set_hl(0, "LspReferenceText", { bg = "#3c3836", underline = false })
          vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = "#3c3836" })
          vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = "#3c3836" })
        end,
      })
    end,
  },
  {
    "Mofiqul/vscode.nvim",
  },
  -- {
  --   "zenbones-theme/zenbones.nvim",
  --   -- Optionally install Lush. Allows for more configuration or extending the colorscheme
  --   -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
  --   -- In Vim, compat mode is turned on as Lush only works in Neovim.
  --   dependencies = "rktjmp/lush.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   -- you can set set configuration options here
  --   config = function()
  --     vim.g.zenbones_darken_comments = 45
  --     vim.cmd.colorscheme('zenbones')
  --     -- vim.g.zenbones_lightness = "bright"
  --   end,
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
