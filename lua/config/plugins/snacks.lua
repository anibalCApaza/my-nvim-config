local M = {}
local snacks = require('snacks')
function M.setup()
    snacks.setup({
        animate = {
            enabled = true,
            duration = 20,
            easing = "outQuad",
            fps = 60,
        },
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
            enabled = true
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
        },
        quickfile = { enabled = false },
        scope = { enabled = false },
        scroll = { enabled = true },
        statuscolumn = { enabled = false },
        words = { enabled = false },
    })
end

return M
