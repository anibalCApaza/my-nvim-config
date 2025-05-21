local M = {}

function M.setup()
    require("mason-lspconfig").setup({
        automatic_enable = false,
        ensure_installed = {
            'lua_ls',
            'pyright',
            'ts_ls',
            'intelephense',
            'html',
            'cssls',
            'astro'
        }
    })
end

return M
