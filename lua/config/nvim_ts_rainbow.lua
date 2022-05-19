local M = {}

function M.setup()
    local colors = {
        "#ebdbb2", -- White
        "#8ec07c", -- Aqua
        "#fe8019", -- Orange
        "#fb4934", -- Red
        "#83a598", -- Blue
        "#16697a", -- Dark Blue
        "#d3869b", -- Purple
    }

    for i, c in ipairs(colors) do
        vim.cmd(("highlight rainbowcol%d guifg=%s"):format(i, c))
    end
end

return M
