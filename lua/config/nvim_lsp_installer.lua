local M = {}

function M.setup()
    local common = require("common")
    local lsp_installer = require("nvim-lsp-installer")

    lsp_installer.setup {
        ensure_installed = common.getTableKeys(common.lsp.servers),
        automatic_installation = true,
    }
end

return M
