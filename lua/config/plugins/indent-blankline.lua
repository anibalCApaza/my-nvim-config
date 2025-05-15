local M = {}
local ibl = require("ibl")


function M.setup()
    ibl.setup({
        indent = {
            char = "▎"

        },
        scope = {
            enabled = false
        },
    })
end

return M
