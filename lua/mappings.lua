-- Disable arrow keys
vim.api.nvim_set_keymap("", "<Left>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("", "<Right>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("", "<Up>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("", "<Down>", "<Nop>", { noremap = true })

vim.api.nvim_set_keymap("!", "<Left>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("!", "<Right>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("!", "<Up>", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("!", "<Down>", "<Nop>", { noremap = true })

-- Telescope
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope live_grep<CR>", { noremap = true, silent = true })

-- Comment shortcut
vim.api.nvim_set_keymap("n", "//", ":Commentary<CR>", { noremap = true, silent = true })

-- Navigate buffer tabs
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })

-- Nerdtree
vim.api.nvim_set_keymap("n", "<Esc>", ":NERDTreeToggle<CR>", { noremap = true, silent = true })

-- nvim-smooth-scroll
vim.api.nvim_set_keymap("", "<C-u>", ":call smooth_scroll#up(&scroll, 5, 2)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("", "<C-d>", ":call smooth_scroll#down(&scroll, 5, 2)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("", "<C-b>", ":call smooth_scroll#up(&scroll*2, 5, 4)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("", "<C-f>", ":call smooth_scroll#down(&scroll*2, 5, 4)<CR>", { noremap = true, silent = true })
