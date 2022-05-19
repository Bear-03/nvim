-- # Vim Airline
-- Enable Tablines (See all open buffers)
-- let g:airline#extensions#tabline#enabled = 1
-- Default hidden buffers, excluding terminal
-- let g:airline#extensions#tabline#ignore_bufadd_pat = "defx|gundo|nerd_tree|startify|tagbar|undotree|vimfiler"
-- let g:airline_theme = "gruvbox_material"

-- # Nerdtree config
-- let NERDTreeQuitOnOpen = 1 -- Close when buffer is opened
-- let NERDTreeShowHidden = 1 -- Show files that start with .
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

-- let g:NERDTreeDirArrowExpandable = " " -- Remove the icon but leave some padding
-- let g:NERDTreeDirArrowCollapsible = " "

-- nerdtree-git-plugin
-- let g:NERDTreeGitStatusWithFlags = 1
-- let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
-- let g:NERDTreeGitStatusIndicatorMapCustom = {
--     \ "Modified"  :"M",
--     \ "Staged"    :"S",
--     \ "Untracked" :"U",
--     \ "Renamed"   :"R",
--     \ "Unmerged"  :"!",
--     \ "Deleted"   :"D",
--     \ "Dirty"     :"*",
--     \ "Ignored"   :"i",
--     \ "Clean"     :"c",
--     \ "Unknown"   :"?",
-- \ }

-- nnoremap <silent> <Esc> :NERDTreeToggle<CR>

require("plugins")
require("options")
require("mappings")

