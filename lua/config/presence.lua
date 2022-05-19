local M = {}

function M.setup()
    local presence = require("presence")

    presence:setup {
        neovim_image_text = "Yes, I have become a stereotypical linux user and now I use vim",
        main_image = "file",
    }
end

return M
