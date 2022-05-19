local M = {}

function M.setup()
    require("nvim-tree").setup({
        renderer = {
            icons = {
                git_placement = "after",
            },
        },
        actions = {
            open_file = {
                quit_on_open = true,
            },
        },
        filters = {
            custom = {
                "^\\.DS_Store$",
                "^\\.git/$",
                "^node_modules/$",
                "^\\.next/$",
                "^__pycache__/$",
                "^\\.venv/$",
                "^.*\\.o$",
                "^target$",
                "^Cargo\\.lock$",
                "^.*\\.import$",
                "^.*\\.mono$",
            },
        },
    })
end

return M
