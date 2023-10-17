local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  "folke/tokyonight.nvim",
  "nvim-lualine/lualine.nvim",
  "nvim-neo-tree/neo-tree.nvim",
  "nvim-tree/nvim-web-devicons",
  "akinsho/bufferline.nvim",
  "lewis6991/gitsigns.nvim",
  "nvim-treesitter/nvim-treesitter",
  "windwp/nvim-autopairs",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-buffer",
  "goolord/alpha-nvim",
  "nvim-telescope/telescope.nvim",
  "nvim-lua/plenary.nvim",

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
  },

  {
    'numToStr/Comment.nvim',
    opts = {
    },
    lazy = false,
  },


  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },

  -- {
  --   'nvim-telescope/telescope.nvim', tag = '0.1.1',
  --   dependencies = { {'nvim-lua/plenary.nvim'} }
  -- },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
    }
  },

  {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
    }
  },

  -- {
  -- "stevearc/dressing.nvim",
  -- opts = {},
  -- },

}
local opts = {}


require("lazy").setup(plugins, opts)
