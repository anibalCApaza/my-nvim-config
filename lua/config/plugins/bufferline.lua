local M = {}

function M.setup()
    require("bufferline").setup({
        options = {
        diagnostics = 'nvim_lsp'
        }
    })
end

return M
