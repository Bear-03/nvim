local common = require("common")

-- Disable arrow keys
common.set_keymap_for_modes({ "", "!" }, "<Left>", "<Nop>", { noremap = true })
common.set_keymap_for_modes({ "", "!" }, "<Right>", "<Nop>", { noremap = true })
common.set_keymap_for_modes({ "", "!" }, "<Up>", "<Nop>", { noremap = true })
common.set_keymap_for_modes({ "", "!" }, "<Down>", "<Nop>", { noremap = true })

-- Save
vim.api.nvim_set_keymap("", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>", { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope live_grep<CR>", { noremap = true, silent = true })

-- Comment shortcut
vim.api.nvim_set_keymap("n", "//", ":Commentary<CR>", { noremap = true, silent = true })

-- Navigate buffer tabs
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })

-- Nerdtree
vim.api.nvim_set_keymap("n", "<Esc>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- nvim-smooth-scroll
vim.api.nvim_set_keymap("", "<C-u>", ":call smooth_scroll#up(&scroll, 5, 2)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("", "<C-d>", ":call smooth_scroll#down(&scroll, 5, 2)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("", "<C-b>", ":call smooth_scroll#up(&scroll*2, 5, 4)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("", "<C-f>", ":call smooth_scroll#down(&scroll*2, 5, 4)<CR>", { noremap = true, silent = true })
