local M = {}

function M.setup()
    require("mason-lspconfig").setup({
        automatic_enable = false,
    })
end

return M
