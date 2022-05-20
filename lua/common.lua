local M = {}

function M.getTableKeys(tab)
    local keyset = {}

    for k, _ in pairs(tab) do
        keyset[#keyset + 1] = k
    end

    return keyset
end

function M.set_keymap_for_modes(modes, lhs, rhs, opts)
    for _, mode in pairs(modes) do
        vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
    end
end

M.lsp = {
    -- [server_name] = <set up normally via lsp>
    servers = {
        ["rust_analyzer"] = false,
        ["sumneko_lua"] = false,
        ["taplo"] = true, -- TOML

        -- Web development
        ["cssls"] = true,
        ["cssmodules_ls"] = true,
        ["eslint"] = true,
        ["emmet_ls"] = true,
        ["html"] = true,
        ["jsonls"] = true,
        ["tsserver"] = true
    },
    get_capabilities = function()
        local cmp_lsp = require("cmp_nvim_lsp")
        return cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
    end
}

return M
