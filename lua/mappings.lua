-- Disable arrow keys
vim.keymap.set({ "", "!" }, "<Left>", "<Nop>", { noremap = true })
vim.keymap.set({ "", "!" }, "<Right>", "<Nop>", { noremap = true })
vim.keymap.set({ "", "!" }, "<Up>", "<Nop>", { noremap = true })
vim.keymap.set({ "", "!" }, "<Down>", "<Nop>", { noremap = true })

-- Save
vim.keymap.set("", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>", { noremap = true, silent = true })

-- Telescope
vim.keymap.set("n", "<C-p>", ":Telescope live_grep<CR>", { noremap = true, silent = true })

-- Comment shortcut
vim.keymap.set("n", "//", ":Commentary<CR>", { noremap = true, silent = true })

-- Navigate buffer tabs
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })

-- Nerdtree
vim.keymap.set("n", "<Esc>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- nvim-smooth-scroll
vim.keymap.set("", "<C-u>", ":call smooth_scroll#up(&scroll, 5, 2)<CR>", { noremap = true, silent = true })
vim.keymap.set("", "<C-d>", ":call smooth_scroll#down(&scroll, 5, 2)<CR>", { noremap = true, silent = true })
vim.keymap.set("", "<C-b>", ":call smooth_scroll#up(&scroll*2, 5, 4)<CR>", { noremap = true, silent = true })
vim.keymap.set("", "<C-f>", ":call smooth_scroll#down(&scroll*2, 5, 4)<CR>", { noremap = true, silent = true })
