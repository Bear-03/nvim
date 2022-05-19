local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path, nil, nil)) > 0 then
    PACKER_BOOTSTRAP = vim.fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path
    }
    print("Installing Packer... Reload NeoVim...")
    vim.cmd("packadd packer.nvim")
end

-- Reload NeoVim when plugins.lua file is saved
local ReloadPackeruseins = vim.api.nvim_create_augroup("ReloadPackeruseins", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "plugins.lua",
    command = "source <afile> | PackerSync",
    group = ReloadPackeruseins
})

local ok, packer = pcall(require, "packer")
if not ok then
    print("Importing Packer failed...")
    return
end

return packer.startup({ function(use)
    -- Let packer manage itself
    use "wbthomason/packer.nvim"

    -- Dependencies
    use "nvim-lua/plenary.nvim" -- For crates.nvim and Telescope

    -- Themes
    use {
        "sainnhe/gruvbox-material",
        config = function()
            require("config.gruvbox_material").setup()
        end
    }

    -- LSP
    use {
        "williamboman/nvim-lsp-installer",
        after = "nvim-lspconfig",
        config = function()
            require("config.nvim_lsp_installer").setup()
        end
    }
    use {
        "neovim/nvim-lspconfig",
        config = function()
            require("config.nvim_lspconfig").setup()
        end
    }

    -- Autocompletion
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline"
        },
        after = "nvim-lspconfig",
        config = function()
            require("config.cmp").setup()
        end
    }
    use {
        "simrat39/rust-tools.nvim",
        after = {
            "nvim-lspconfig",
            "nvim-lsp-installer",
        },
        config = function()
            require("config.rust_tools").setup()
        end
    }
    use {
        "folke/lua-dev.nvim",
        after = {
            "nvim-lspconfig",
            "nvim-lsp-installer",
        },
        config = function()
            require("config.lua_dev").setup()
        end
    }

    -- Nvim-tree
    use {
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("config.nvim_tree").setup()
        end
    }

    -- Treesitter (Needs a C compiler) - Better syntax highlighting
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        event = { "BufRead", "BufNewFile" },
        config = function()
            require("config.nvim_treesitter").setup()
        end
    }
    use {
        "p00f/nvim-ts-rainbow", -- Rainbow brackets
        after = "nvim-treesitter",
        config = function()
            require("config.nvim_ts_rainbow").setup()
        end
    }
    use {
        "nvim-treesitter/playground", -- Rainbow brackets
        after = "nvim-treesitter"
    }

    -- Other
    use {
        "andweeb/presence.nvim", -- Discord RPC
        config = function()
            require("config.presence").setup()
        end
    }
    use {
        "saecki/crates.nvim", -- Rust crates info
        requires = { 'nvim-lua/plenary.nvim' },
        event = { "BufRead Cargo.toml" },
    }
    use "nvim-telescope/telescope.nvim" -- File/String finder (Needs RipGrep and Fd-Find)
    use "tpope/vim-commentary" -- Comment shortcut
    use "Yggdroot/indentLine" -- Indent markers
    use "vim-airline/vim-airline" -- Custom status bar and open buffer visualization
    use {
        "ntpeters/vim-better-whitespace", -- Highlight trailing spaces
        config = function()
            require("config.vim_better_whitespace").setup()
        end
    }
    use {
        "lewis6991/gitsigns.nvim", -- Git signs in number bar
        config = function()
            require("gitsigns").setup()
        end
    }
    use "terryma/vim-smooth-scroll" -- Smooth ctrl-f and ctrl-b


    -- Let packer manage itself
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end,
config = {
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end
    },
    profile = {
        enable = true,
        threshold = 1 -- the amount in ms that a plugins load time must be over for it to be included in the profile
    }
} })
