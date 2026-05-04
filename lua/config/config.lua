vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.showmode = false


vim.diagnostic.config({
  underline = false,
  signs = false,
  virtual_text = { space = 2, prefix = "•"},
  severity_sort = true,
  float = { bordor = "rounded" },
  update_in_insert = true
})
