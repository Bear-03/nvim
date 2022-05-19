-- Use CodeNewRoman Nerd Font

vim.cmd("language en_US")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showcmd = true
vim.opt.showmatch = true -- Shows where the closing [({ etc. is located
vim.opt.encoding = "utf-8"
vim.opt.virtualedit = "onemore"

-- Tab settings
vim.opt.expandtab = true -- Always use spaces instead of TABS
vim.opt.tabstop = 4 -- The width of a TAB is set to 4
vim.opt.shiftwidth = 4 -- Indents will have a width of 4
vim.opt.softtabstop = 4 -- Sets the number of columns for TABS

if vim.fn.has("termguicolors") == 1 then
    vim.opt.termguicolors = true
end

-- # Format on save
vim.cmd("autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil, 1000)")
