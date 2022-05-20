local M = {}

function M.setup()
    local common = require("common")
    local lsp = require("lspconfig")
    local lsp_installer = require("nvim-lsp-installer")

    lsp_installer.setup {
        ensure_installed = common.getTableKeys(common.lsp.servers),
        automatic_installation = true,
    }

    local capabilities = common.lsp.get_capabilities()

    for server, setup_normally in pairs(common.lsp.servers) do
        if setup_normally then
            lsp[server].setup({ capabilities = capabilities })
        end
    end
end

return M
