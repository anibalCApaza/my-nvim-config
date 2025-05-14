local M = {}
local ibl = require("ibl")


function M.setup()
    ibl.setup({
        indent = {
            char = "▎"
        }
    })
end

return M
