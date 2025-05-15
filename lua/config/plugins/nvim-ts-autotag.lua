local M = {}
local nvim_ts_autotag = require('nvim-ts-autotag')
function M.setup()
    nvim_ts_autotag.setup({
        opts = {

            enable_close = true,
            enable_rename = true
        },
    })
end

return M

