local M = {}
local telescope = require('telescope')
function M.setup()
    telescope.setup({
        defaults = {
            file_ignore_patterns = {
                "node_modules", -- ignora node_modules
                "^%.git/",      -- ignora carpeta .git
                "^vendor/",     -- ignora vendor de PHP/Laravel
                "^%.venv/",     -- ignora .venv
                "^venv/",       -- ignora venv sin punto
                "__pycache__/", -- ignora cache de Python
                "%.lock",       -- yarn.lock, package-lock.json, etc.
                "%.env",        -- archivos .env, .env.local, etc.
                "%.min%.js",    -- JS minificados
                "%.min%.css",   -- CSS minificados
            }
        },
        extensions = {
            fzf = {
                fuzzy = true,                   -- false will only do exact matching
                override_generic_sorter = true, -- override the generic sorter
                override_file_sorter = true,    -- override the file sorter
                case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                -- the default case_mode is "smart_case"
            }
        }
    })

    require('telescope').load_extension('fzf')
end

return M
