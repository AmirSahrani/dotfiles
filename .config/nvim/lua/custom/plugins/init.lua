-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'onsails/lspkind.nvim',
    opts = {
      lazy = false,
      symbol_map = {
        Text = '',
        Method = '',
        Function = '󰊕',
        Constructor = '',
        Field = '󰽐',
        Variable = '󰫧',
        Class = '󰨡',
        Interface = '',
        Module = '',
        Property = '',
        Unit = '',
        Value = 'λ',
        Enum = '',
        Keyword = '󱆟',
        Snippet = '',
        Color = '',
        File = '󰈔',
        Reference = '',
        Folder = '',
        EnumMember = '',
        Constant = '',
        Struct = '',
        Event = '',
        Operator = '',
        TypeParameter = '󰉺',
      },
    },
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
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
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
    -- Optional dependencies
    dependencies = { { 'nvim-tree/nvim-web-devicons', opts = {} } },
  },
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_compiler_method = 'pdflatex'
    end,
  },
}
