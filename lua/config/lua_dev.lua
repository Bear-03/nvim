local M = {}

function M.setup()
    local common = require("common")
    local lua_dev = require("lua-dev")
    local lsp = require("lspconfig")

    local lua_dev_config = lua_dev.setup({
        lspconfig = {
            capabilities = common.lsp.get_capabilities(),
        }
    })

    lsp.sumneko_lua.setup(lua_dev_config)
end

return M
