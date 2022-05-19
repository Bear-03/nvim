-- # Vim Airline
-- Enable Tablines (See all open buffers)
-- let g:airline#extensions#tabline#enabled = 1
-- Default hidden buffers, excluding terminal
-- let g:airline#extensions#tabline#ignore_bufadd_pat = "defx|gundo|nerd_tree|startify|tagbar|undotree|vimfiler"

-- # Nerdtree config
-- let NERDTreeIgnore = [
--     \"^\.DS_Store$",
--     \"^\.git$[[dir]]",
--     \"^node_modules$[[dir]]",
--     \"^\.next$[[dir]]",
--     \"^__pycache__$[[dir]]",
--     \"^\.venv$[[dir]]",
--     \"^.*\.o$",
--     \"^target$[[dir]]",
--     \"^Cargo\.lock$",
--     \"^.*\.import$",
--     \"^.*\.mono$",
-- \]

require("plugins")
require("options")
require("mappings")
