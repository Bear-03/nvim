local M = {}

function M.setup()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
        [[⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⣴⣾⠟⣋⣉⣉⡛⢿⣶⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⣸⣿⢡⣾⣿⣿⡿⠿⢂⣹⣿⣦⣶⣶⣶⣶⣶⣶⣤⣤⣀⡀⠀⢠⣴⣾⠟⢛⣛⡛⢦⡀⠀]],
        [[⠀⠀⠀⠀⠀⢻⣿⡈⠿⢋⣡⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣬⡁⠾⣿⣿⣿⡆⣷⠀]],
        [[⠀⠀⠀⠀⠀⠀⠻⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣌⠻⠟⣰⠏⠀]],
        [[⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡘⠁⠀⠀]],
        [[⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⠟⠉⠉⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀]],
        [[⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠈⠙⢿⣿⡇⠀⠀]],
        [[⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⣸⣿⡇⠀⠀]],
        [[⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢛⣿⣿⣿⣿⠿⠿⢿⣿⣿⡿⣷⣤⣤⣤⣶⣿⣿⡇⠀⠀]],
        [[⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢡⣾⣿⣿⣿⣯⠀⠀⠀⠀⣸⣿⣷⣦⡙⢿⣿⣿⣿⣿⣷⠀⠀]],
        [[⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡙⢿⣿⣿⣿⣿⡷⠤⢤⣴⣿⣿⣿⣿⠇⣸⣿⣿⣿⣿⣿⡀⠀]],
        [[⠐⠛⢋⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⢠⣤⠠⣤⣶⣶⣦⣬⣍⠉⣩⣥⣾⣿⣿⣿⣿⣿⣿⣧⠀]],
        [[⠀⢀⡿⠟⣿⣿⢿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⠘⣿⡀⣿⣿⣿⣿⠻⣿⢠⣿⣿⣿⣿⣿⠉⢻⣿⠇⠈⠁]],
        [[⠀⠀⠀⠀⠋⠀⠀⠏⠀⠸⠋⠉⠉⠉⠉⠁⠀⠀⠙⢷⣬⣉⣉⣥⡾⠃⠀⠀⠀⠀⠛⠁⠀⠈⠏⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    }

    dashboard.section.buttons.val = {
        dashboard.button("e", "  New file", "<cmd>ene <CR>", nil),
    }

    alpha.setup(dashboard.config)
end

return M
