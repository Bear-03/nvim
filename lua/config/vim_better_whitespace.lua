local M = {}

function M.setup()
    vim.g.strip_whitespace_on_save = 1
    vim.g.strip_whitespace_confirm = 0 -- Do not ask for confirmation
end

return M
