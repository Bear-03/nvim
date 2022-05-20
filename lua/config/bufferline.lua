local M = {}

function M.setup()
    require("bufferline").setup({
        options = {
            offsets = {
                { filetype = "NvimTree", text = "", padding = 1 },
                { filetype = "neo-tree", text = "", padding = 1 },
            },
            show_buffer_close_icons = false,
        }
    })
end

return M
