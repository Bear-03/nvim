local M = {}

function M.setup()
    require("lualine").setup({
        options = {
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
        },
    })
end

return M
