local M = {}
local snacks = require('snacks')
function M.setup()
    snacks.setup({
        animate = {
            duration = 20,
            easing = "linear",
            fps = 120,
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
            enabled = true,
            indent = {
                enabled = true,
                char = '▏',
            },
            animate = {
                easing = "inOutCubic",
                duration = {
                    step = 15,
                    total = 500
                }
            },
            scope = {
                enabled = true,
                char = '▎'
            }
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
            margin = {
                bottom = 2
            }
        },
        quickfile = { enabled = false },
        scope = { enabled = false },
        scroll = { enabled = true },
        statuscolumn = { enabled = false },
        words = { enabled = false },
        zen = {
            toggles = {
                dim = false,
                git_signs = true
            },
        }

    })
end

return M
