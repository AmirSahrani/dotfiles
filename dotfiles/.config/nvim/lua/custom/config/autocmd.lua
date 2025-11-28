-- Define a function to enable spellcheck and word wrapping
local function setup_tex_settings()
  vim.opt_local.spell = true -- Enable spellcheck
  vim.opt_local.wrap = true -- Enable word wrapping
  vim.opt_local.linebreak = true -- Wrap lines at word boundaries
end

-- Create an autocmd for TeX filetypes
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'tex', -- Trigger for TeX files
  callback = setup_tex_settings, -- Call the function
})
