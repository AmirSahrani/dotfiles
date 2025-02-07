-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
require 'custom.config.autocmd'
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
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'rcarriga/nvim-dap-ui',
      'theHamsta/nvim-dap-virtual-text',
      'nvim-neotest/nvim-nio',
    },
    config = function()
      require 'custom.config.dap'
    end,
  },
  {
    'ggandor/leap.nvim',
    init = function()
      require('leap').create_default_mappings()
    end,
    {
      'iurimateus/luasnip-latex-snippets.nvim',
      -- vimtex isn't required if using treesitter
      requires = { 'L3MON4D3/LuaSnip', 'lervag/vimtex' },
      config = function()
        require('luasnip-latex-snippets').setup()
        -- or setup({ use_treesitter = true })
        require('luasnip').config.setup { enable_autosnippets = true, allow_on_markdown = true }
      end,
    },
    {

      'rebelot/kanagawa.nvim',
    },
  },
}
