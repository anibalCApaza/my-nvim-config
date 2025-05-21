local M = {}
local snacks = require('snacks')
function M.setup()
    snacks.setup({
        bigfile = {
            enabled = false
        },
        dashboard = {
            enabled = false
        },
        explorer = {
            enabled = false
        },
        indent = {
            enabled = false
        },
        input = {
            enabled = false
        },
        picker = {
            enabled = false
        },
        notifier = {
            enabled = true,
            timeout = 4000,
            top_down = false,
            style = "fancy",
            level = 0,
        }

    })

end
return M
