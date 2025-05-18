local M = {}
local barbar = require("barbar")

function M.setup()
    barbar.setup({
        icons = {
            separator = { left = '|', right = '' },
            separator_at_end = true,
        }
    })

end

return M
