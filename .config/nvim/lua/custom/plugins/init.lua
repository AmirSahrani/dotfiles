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
      {
        'hat0uma/csvview.nvim',
        ---@module "csvview"
        ---@type CsvView.Options
        opts = {
          parser = { comments = { '#', '//' } },
          keymaps = {
            -- Text objects for selecting fields
            textobject_field_inner = { 'if', mode = { 'o', 'x' } },
            textobject_field_outer = { 'af', mode = { 'o', 'x' } },
            -- Excel-like navigation:
            -- Use <Tab> and <S-Tab> to move horizontally between fields.
            -- Use <Enter> and <S-Enter> to move vertically between rows and place the cursor at the end of the field.
            -- Note: In terminals, you may need to enable CSI-u mode to use <S-Tab> and <S-Enter>.
            jump_next_field_end = { '<Tab>', mode = { 'n', 'v' } },
            jump_prev_field_end = { '<S-Tab>', mode = { 'n', 'v' } },
            jump_next_row = { '<Enter>', mode = { 'n', 'v' } },
            jump_prev_row = { '<S-Enter>', mode = { 'n', 'v' } },
          },
        },
        cmd = { 'CsvViewEnable', 'CsvViewDisable', 'CsvViewToggle' },
      },
    },
    {

      'rebelot/kanagawa.nvim',
    },
  },
}
