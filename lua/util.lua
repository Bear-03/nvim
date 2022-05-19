local M = {}

function M.getTableKeys(tab)
    local keyset = {}

    for k, _ in pairs(tab) do
        keyset[#keyset + 1] = k
    end

    return keyset
end

M.lsp_capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

return M

