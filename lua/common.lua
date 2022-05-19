local M = {}

function M.getTableKeys(tab)
    local keyset = {}

    for k, _ in pairs(tab) do
        keyset[#keyset + 1] = k
    end

    return keyset
end

M.lsp = {
    -- [server_name] = <set up normally via lsp>
    servers = {
        ["rust_analyzer"] = false,
        ["sumneko_lua"] = false,
        ["taplo"] = true, -- TOML
    },
    get_capabilities = function()
        local cmp_lsp = require("cmp_nvim_lsp")
        return cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
    end
}

return M
