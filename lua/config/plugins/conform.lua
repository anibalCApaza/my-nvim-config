local M = {}

local conform = require('conform')

function M.setup()
    conform.setup({
        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback"
        },

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
