local M = {}

local conform = require('conform')

function M.setup()
    conform.setup({
        formatters_by_ft = {
            html = { 'prettier' },
            css = { 'prettier' },
            javascript = { 'prettier' },
            typescript = { 'prettier' },
            python = { 'black' }
        }
    })
end

return M
