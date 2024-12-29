-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'onsails/lspkind.nvim',
    opts = function()
      require 'custom.config.lspkind'
    end,
  },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      animation = true,
    },
  },
  {
    'numToStr/Comment.nvim',
    opts = {},
  },
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    dependencies = { { 'nvim-tree/nvim-web-devicons', opts = {} } },
  },
  {
    'lervag/vimtex',
    lazy = false,
    init = function()
      require 'custom.config.vimtex'
    end,
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require 'custom.config.harpoon'
    end,
  },

  { 'GCBallesteros/jupytext.nvim', config = true },
}
