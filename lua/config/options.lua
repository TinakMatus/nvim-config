-- Standard line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.api.nvim_set_hl(0, "LineNr", { fg = "red", bg = "black" })

-- How manddy spaces a Tab is worth
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true


vim.opt.confirm = true
vim.opt.autowrite = true
vim.opt.hidden = true

vim.opt.clipboard = "unnamedplus"

vim.opt.cursorline = true
vim.opt.termguicolors = true
