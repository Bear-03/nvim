local M = {}

function M.setup()
    local common = require("common")
    local lua_dev = require("lua-dev")
    local lsp = require("lspconfig")

    local lua_dev_config = lua_dev.setup({
        lspconfig = {
            capabilities = common.lsp.get_capabilities(),
            -- The "settings" table will not work without this
            cmd = { vim.fn.stdpath("data") .. "/lsp_servers/sumneko_lua/extension/server/bin/lua-language-server" },
        }
    })

    lsp.sumneko_lua.setup(lua_dev_config)
end

return M
