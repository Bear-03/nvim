local M = {}

function M.setup()
    local common = require("common")

    require("rust-tools").setup {
        capabilities = common.lsp.get_capabilities(),
        tools = {
            hover_with_actions = true,
            inlay_hints = {
                show_parameter_hints = false,
                parameter_hints_prefix = "",
                other_hints_prefix = "",
            },
        },
    }
end

return M
