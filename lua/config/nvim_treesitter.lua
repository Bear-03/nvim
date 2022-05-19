local M = {}

function M.setup()
    local treesitter_config = require("nvim-treesitter.configs")

    treesitter_config.setup {
        ensure_installed = "all",
        sync_install = false,
        highlight = {
            enable = true,
        },
        rainbow = {
            enable = true,
            extended_mode = true,
        },
        indent = { enable = true },
        playground = { enable = true }
    }
end

return M
