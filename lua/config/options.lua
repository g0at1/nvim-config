vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.opt.fillchars:append({ eob = " " })
vim.opt.cmdheight = 0
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.guicursor = ""

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.cmd.highlight("Normal guibg=NONE ctermbg=NONE")
    vim.cmd.highlight("NormalNC guibg=NONE ctermbg=NONE")
    vim.cmd.highlight("EndOfBuffer guibg=NONE")
    vim.cmd.highlight("SignColumn guibg=NONE")
  end,
})
